The NXP lwIP Port
===============================================================================

Below is description of possible settings of the port layer and an overview of 
a few helper functions.

The best place for redefinition of any mentioned macro is `lwipopts.h`.

The declaration of every mentioned function is in `ethernetif.h`. Please check 
the doxygen comments of those functions before.


## Link state
Physical link state (up/down) and its speed and duplex must be read out from 
PHY over MDIO bus. Especially link information is useful for lwIP stack so it
can for example send DHCP discovery immediately when a link becomes up.

To simplify this port layer offers a function `ethernetif_probe_link()` which 
reads those data from PHY and forwards them into lwIP stack.

In almost all examples this function is called every `ETH_LINK_POLLING_INTERVAL_MS`
(1500ms) by a function `probe_link_cyclic()`. 

By setting `ETH_LINK_POLLING_INTERVAL_MS` to 0 polling will be disabled.
On FreeRTOS, `probe_link_cyclic()` will be then called on an interrupt generated 
by PHY. GPIO port and pin for the interrupt line must be set in the 
`ethernetifConfig` struct passed to `ethernetif_init()`. On bare metal interrupts
are not supported right now.


## Rx task
To improve the reaction time of the app, reception of packets is done in
a dedicated task. The rx task stack size can be set by `ETH_RX_TASK_STACK_SIZE`
macro, its priority by `ETH_RX_TASK_PRIO`.

If you want to save memory you can set reception to be done in an interrupt by
setting `ETH_DO_RX_IN_SEPARATE_TASK` macro to 0.


## Disabling Rx interrupt when out of buffers
If `ETH_DISABLE_RX_INT_WHEN_OUT_OF_BUFFERS` is set to 1, then when the port
gets out of Rx buffers, Rx enet interrupt will be disabled for a particular 
controller. Everytime Rx buffer is freed, Rx interrupt will be enabled.

This prevents your app from never getting out of Rx interrupt when the network
is flooded with traffic.

`ETH_DISABLE_RX_INT_WHEN_OUT_OF_BUFFERS` is by default turned on, on FreeRTOS
and off on bare metal.

## Limit the number of packets read out from the driver at once on bare metal.
You may define macro `ETH_MAX_RX_PKTS_AT_ONCE` to limit the number of received 
packets read out from the driver at once. 

In case of heavy Rx traffic, lowering this number improves the realtime
behaviour of an app. Increasing improves Rx throughput. 

Setting it to value < 1 or not defining means "no limit".

## Using the payload checksum computed by the MAC
The ENET MAC sums the IP payload of every frame it receives and reports the sum in the enhanced receive buffer
descriptor. With `ETH_USE_RX_PAYLOAD_CHECKSUM` set to 1 the port records that sum for each received frame and
`ethernetif_rx_payload_chksum()` hands it to lwIP when lwIP asks for the checksum of exactly that range, instead of
reading the payload again. lwIP still adds the pseudo header and does the comparison itself, so all
`CHECKSUM_CHECK_*` options keep their meaning. This is meant for configurations that must verify checksums in
software, for example because `IP_REASSEMBLY` is enabled: the MAC cannot verify fragmented datagrams but it sums
each fragment, and lwIP sums a reassembled datagram one fragment at a time.

Requirements:
- Only the ENET port (`enet_ethernetif_kinetis.c`) supports it.
- `ENET_ENHANCEDBUFFERDESCRIPTOR_MODE` must be defined.
- `LWIP_CHKSUM` must be set to `ethernetif_rx_payload_chksum`, and `LWIP_CHKSUM_ALGORITHM` must still select a
  software algorithm. The Kconfig template `lwipopts.h` does both when the option is set.

Only frames with an Ethernet header followed by an IPv4 header without options are handled; the checksum of
anything else is computed in software as usual.

## Checking the IPv4 header with the result of the MAC
With `CHECKSUM_CHECK_IP` set to 0 the port lets the MAC discard received frames whose IPv4 header checksum is wrong
(`RACC[IPDIS]`) and lwIP does not check headers. The MAC does not discard frames with less than 3 bytes of IP
payload: it flags them as header errors whether their header is right or not, so nobody checks them, and a wrong
header on the last fragment of, for example, a 1473-byte UDP datagram is accepted. The discarded frames are not
counted by lwIP either.
With `ETH_USE_RX_IP_HEADER_CHECK` set to 1 the MAC does not discard anything: the port trusts the MAC's check for
frames it verified (IPv4 without options, descriptor completed, no header checksum error) and checks every other
IPv4 frame in software, dropping it and counting it in `ip.chkerr` if its header is wrong. lwIP does not check the
header again, which saves reading it for every received frame.

Requirements:
- Only the ENET port (`enet_ethernetif_kinetis.c`) supports it.
- `ENET_ENHANCEDBUFFERDESCRIPTOR_MODE` must be defined, and `CHECKSUM_CHECK_IP` must be 0.

## Helper functions
If your application needs to wait for the link to become up you can use one of
the following functions:
- `ethernetif_wait_linkup()`- Blocks until the link on the passed netif is not up.
- `ethernetif_wait_linkup_array()` - Blocks until the link on at least one netif
  from the passed list of netifs becomes up.

If your app needs to wait for the IPv4 address on a particular netif to become
different than "ANY" address (255.255.255.255) function
`ethernetif_wait_ipv4_valid()` does this.
