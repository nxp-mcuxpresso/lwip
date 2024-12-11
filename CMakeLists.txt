# This is NXP version of lwip CMakeLists.txt, the lwip upstream version is not used.

if (CONFIG_MCUX_COMPONENT_middleware.lwip)
    mcux_add_include(
        PROJECT_BASE_PATH lwip
        INCLUDES port
                 src
                 src/include
                 src/include/lwip
    )

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/port
        SOURCES
            port/arch/cc.h
            port/arch/perf.h
    )

if (CONFIG_MCUX_COMPONENT_middleware.lwip.sys_arch.static)
    mcux_add_include(
        PROJECT_BASE_PATH lwip
        INCLUDES port/sys_arch/static
    )
    mcux_add_source(
        SOURCES
            port/sys_arch/static/arch/sys_arch.h
            port/sys_arch/static/sys_arch.c
    )
endif ()
if (CONFIG_MCUX_COMPONENT_middleware.lwip.sys_arch.dynamic)
    mcux_add_include(
        PROJECT_BASE_PATH lwip
        INCLUDES port/sys_arch/dynamic
    )
    mcux_add_source(
        SOURCES
            port/sys_arch/dynamic/arch/sys_arch.h
            port/sys_arch/dynamic/sys_arch.c
    )
endif ()

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/src/api
        SOURCES
            src/api/api_lib.c
            src/api/api_msg.c
            src/api/err.c
            src/api/if_api.c
            src/api/netbuf.c
            src/api/netdb.c
            src/api/netifapi.c
            src/api/sockets.c
            src/api/tcpip.c
    )

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/src/core
        SOURCES
            src/core/altcp.c
            src/core/altcp_alloc.c
            src/core/altcp_tcp.c
            src/core/def.c
            src/core/dns.c
            src/core/inet_chksum.c
            src/core/init.c
            src/core/ip.c
            src/core/mem.c
            src/core/memp.c
            src/core/netif.c
            src/core/pbuf.c
            src/core/raw.c
            src/core/stats.c
            src/core/sys.c
            src/core/tcp.c
            src/core/tcp_in.c
            src/core/tcp_out.c
            src/core/timeouts.c
            src/core/udp.c
    )

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/src/core/ipv4
        SOURCES
            src/core/ipv4/acd.c
            src/core/ipv4/autoip.c
            src/core/ipv4/dhcp.c
            src/core/ipv4/etharp.c
            src/core/ipv4/icmp.c
            src/core/ipv4/igmp.c
            src/core/ipv4/ip4.c
            src/core/ipv4/ip4_addr.c
            src/core/ipv4/ip4_frag.c
    )

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/src/core/ipv6
        SOURCES
            src/core/ipv6/dhcp6.c
            src/core/ipv6/ethip6.c
            src/core/ipv6/icmp6.c
            src/core/ipv6/inet6.c
            src/core/ipv6/ip6.c
            src/core/ipv6/ip6_addr.c
            src/core/ipv6/ip6_frag.c
            src/core/ipv6/mld6.c
            src/core/ipv6/nd6.c
    )

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/src/include/compat
        SOURCES
            src/include/compat/posix/netdb.h
            src/include/compat/posix/arpa/inet.h
            src/include/compat/posix/net/if.h
            src/include/compat/posix/sys/socket.h
            src/include/compat/stdc/errno.h
    )

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/src/include/lwip
        SOURCES
            src/include/lwip/acd.h
            src/include/lwip/altcp.h
            src/include/lwip/altcp_tcp.h
            src/include/lwip/altcp_tls.h
            src/include/lwip/api.h
            src/include/lwip/arch.h
            src/include/lwip/autoip.h
            src/include/lwip/debug.h
            src/include/lwip/def.h
            src/include/lwip/dhcp.h
            src/include/lwip/dhcp6.h
            src/include/lwip/dns.h
            src/include/lwip/err.h
            src/include/lwip/errno.h
            src/include/lwip/etharp.h
            src/include/lwip/ethip6.h
            src/include/lwip/icmp.h
            src/include/lwip/icmp6.h
            src/include/lwip/if_api.h
            src/include/lwip/igmp.h
            src/include/lwip/inet.h
            src/include/lwip/inet_chksum.h
            src/include/lwip/init.h
            src/include/lwip/ip.h
            src/include/lwip/ip4.h
            src/include/lwip/ip4_addr.h
            src/include/lwip/ip4_frag.h
            src/include/lwip/ip6.h
            src/include/lwip/ip6_addr.h
            src/include/lwip/ip6_frag.h
            src/include/lwip/ip6_zone.h
            src/include/lwip/ip_addr.h
            src/include/lwip/mem.h
            src/include/lwip/memp.h
            src/include/lwip/mld6.h
            src/include/lwip/nd6.h
            src/include/lwip/netbuf.h
            src/include/lwip/netdb.h
            src/include/lwip/netif.h
            src/include/lwip/netifapi.h
            src/include/lwip/opt.h
            src/include/lwip/pbuf.h
            src/include/lwip/raw.h
            src/include/lwip/sio.h
            src/include/lwip/snmp.h
            src/include/lwip/sockets.h
            src/include/lwip/stats.h
            src/include/lwip/sys.h
            src/include/lwip/tcp.h
            src/include/lwip/tcpbase.h
            src/include/lwip/tcpip.h
            src/include/lwip/timeouts.h
            src/include/lwip/udp.h
    )

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/src/include/lwip/priv
        SOURCES
            src/include/lwip/priv/altcp_priv.h
            src/include/lwip/priv/api_msg.h
            src/include/lwip/priv/memp_priv.h
            src/include/lwip/priv/memp_std.h
            src/include/lwip/priv/mem_priv.h
            src/include/lwip/priv/nd6_priv.h
            src/include/lwip/priv/raw_priv.h
            src/include/lwip/priv/sockets_priv.h
            src/include/lwip/priv/tcpip_priv.h
            src/include/lwip/priv/tcp_priv.h
    )

    mcux_add_source(
        # PROJECT_BASE_PATH lwip/src/include/lwip/prot
        SOURCES
            src/include/lwip/prot/acd.h
            src/include/lwip/prot/autoip.h
            src/include/lwip/prot/dhcp.h
            src/include/lwip/prot/dhcp6.h
            src/include/lwip/prot/dns.h
            src/include/lwip/prot/etharp.h
            src/include/lwip/prot/ethernet.h
            src/include/lwip/prot/iana.h
            src/include/lwip/prot/icmp.h
            src/include/lwip/prot/icmp6.h
            src/include/lwip/prot/ieee.h
            src/include/lwip/prot/igmp.h
            src/include/lwip/prot/ip.h
            src/include/lwip/prot/ip4.h
            src/include/lwip/prot/ip6.h
            src/include/lwip/prot/mld6.h
            src/include/lwip/prot/nd6.h
            src/include/lwip/prot/tcp.h
            src/include/lwip/prot/udp.h
    )

    mcux_add_source(
        SOURCES
            src/include/netif/bridgeif.h
            src/include/netif/bridgeif_opts.h
            src/include/netif/etharp.h
            src/include/netif/ethernet.h
            src/include/netif/ieee802154.h
            src/include/netif/lowpan6.h
            src/include/netif/lowpan6_ble.h
            src/include/netif/lowpan6_common.h
            src/include/netif/lowpan6_opts.h
            src/include/netif/slipif.h
            src/include/netif/zepif.h
            src/include/netif/ppp/ccp.h
            src/include/netif/ppp/chap-md5.h
            src/include/netif/ppp/chap-new.h
            src/include/netif/ppp/chap_ms.h
            src/include/netif/ppp/eap.h
            src/include/netif/ppp/ecp.h
            src/include/netif/ppp/eui64.h
            src/include/netif/ppp/fsm.h
            src/include/netif/ppp/ipcp.h
            src/include/netif/ppp/ipv6cp.h
            src/include/netif/ppp/lcp.h
            src/include/netif/ppp/magic.h
            src/include/netif/ppp/mppe.h
            src/include/netif/ppp/ppp.h
            src/include/netif/ppp/pppapi.h
            src/include/netif/ppp/pppcrypt.h
            src/include/netif/ppp/pppdebug.h
            src/include/netif/ppp/pppoe.h
            src/include/netif/ppp/pppol2tp.h
            src/include/netif/ppp/pppos.h
            src/include/netif/ppp/ppp_impl.h
            src/include/netif/ppp/ppp_opts.h
            src/include/netif/ppp/upap.h
            src/include/netif/ppp/vj.h
            src/include/netif/ppp/polarssl/arc4.h
            src/include/netif/ppp/polarssl/des.h
            src/include/netif/ppp/polarssl/md4.h
            src/include/netif/ppp/polarssl/md5.h
            src/include/netif/ppp/polarssl/sha1.h
            src/netif/bridgeif.c
            src/netif/bridgeif_fdb.c
            src/netif/ethernet.c
            src/netif/lowpan6.c
            src/netif/lowpan6_ble.c
            src/netif/lowpan6_common.c
            src/netif/slipif.c
            src/netif/zepif.c
            src/netif/ppp/auth.c
            src/netif/ppp/ccp.c
            src/netif/ppp/chap-md5.c
            src/netif/ppp/chap-new.c
            src/netif/ppp/chap_ms.c
            src/netif/ppp/demand.c
            src/netif/ppp/eap.c
            src/netif/ppp/ecp.c
            src/netif/ppp/eui64.c
            src/netif/ppp/fsm.c
            src/netif/ppp/ipcp.c
            src/netif/ppp/ipv6cp.c
            src/netif/ppp/lcp.c
            src/netif/ppp/magic.c
            src/netif/ppp/mppe.c
            src/netif/ppp/multilink.c
            src/netif/ppp/ppp.c
            src/netif/ppp/pppapi.c
            src/netif/ppp/pppcrypt.c
            src/netif/ppp/pppoe.c
            src/netif/ppp/pppol2tp.c
            src/netif/ppp/pppos.c
            src/netif/ppp/upap.c
            src/netif/ppp/utils.c
            src/netif/ppp/vj.c
            src/netif/ppp/polarssl/arc4.c
            src/netif/ppp/polarssl/des.c
            src/netif/ppp/polarssl/md4.c
            src/netif/ppp/polarssl/md5.c
            src/netif/ppp/polarssl/sha1.c
    )

endif()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.template)
    mcux_add_include(
        INCLUDES template
        TARGET_FILES lwipopts.h
    )
    mcux_add_source(
        SOURCES template/lwipopts.h
        CONFIG TRUE
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.contrib.ping)
    mcux_add_include(
        PROJECT_BASE_PATH lwip
        INCLUDES contrib/apps/ping
    )

    mcux_add_source(
        SOURCES
            contrib/apps/ping/ping.c
            contrib/apps/ping/ping.h
    )

endif()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.apps.lwiperf)
    mcux_add_include(
        PROJECT_BASE_PATH lwip
        INCLUDES src/include/lwip/apps
    )

    mcux_add_source(
        SOURCES
            src/apps/lwiperf/lwiperf.c
            src/include/lwip/apps/lwiperf.h
    )

    mcux_add_macro(
        "-DSO_REUSE=1\
         -DPRINTF_FLOAT_ENABLE=1"
    )

endif()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.apps.httpsrv)
    mcux_add_include(
        PROJECT_BASE_PATH lwip
        INCLUDES src/apps/httpsrv
    )

    mcux_add_source(
        SOURCES
            src/apps/httpsrv/httpsrv.c
            src/apps/httpsrv/httpsrv.h
            src/apps/httpsrv/httpsrv_base64.c
            src/apps/httpsrv/httpsrv_base64.h
            src/apps/httpsrv/httpsrv_config.h
            src/apps/httpsrv/httpsrv_fs.c
            src/apps/httpsrv/httpsrv_fs.h
            src/apps/httpsrv/httpsrv_port.h
            src/apps/httpsrv/httpsrv_prv.h
            src/apps/httpsrv/httpsrv_script.c
            src/apps/httpsrv/httpsrv_script.h
            src/apps/httpsrv/httpsrv_sha1.c
            src/apps/httpsrv/httpsrv_sha1.h
            src/apps/httpsrv/httpsrv_supp.c
            src/apps/httpsrv/httpsrv_supp.h
            src/apps/httpsrv/httpsrv_task.c
            src/apps/httpsrv/httpsrv_tls.c
            src/apps/httpsrv/httpsrv_tls.h
            src/apps/httpsrv/httpsrv_utf8.c
            src/apps/httpsrv/httpsrv_utf8.h
            src/apps/httpsrv/httpsrv_ws.c
            src/apps/httpsrv/httpsrv_ws.h
            src/apps/httpsrv/httpsrv_ws_api.c
            src/apps/httpsrv/httpsrv_ws_prv.h
    )

endif()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.apps.httpssrv)
    # Note: This is an extension component for http server and as such does not contain any sources.
    mcux_add_macro(
        "-DMBEDTLS_THREADING_C\
         -DMBEDTLS_THREADING_ALT"
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.apps.mdns)
    mcux_add_include(
        INCLUDES src/include/lwip/apps
    )
    mcux_add_source(
        SOURCES
            src/apps/mdns/mdns_domain.c
            src/apps/mdns/mdns_out.c
            src/apps/mdns/mdns.c
            src/include/lwip/apps/mdns.h
            src/include/lwip/apps/mdns_domain.h
            src/include/lwip/apps/mdns_priv.h
            src/include/lwip/apps/mdns_opts.h
            src/include/lwip/apps/mdns_out.h
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.apps.mqtt)
    mcux_add_include(
        INCLUDES src/include/lwip/apps
    )

    mcux_add_source(
        SOURCES
            src/apps/mqtt/mqtt.c
            src/include/lwip/apps/mqtt.h
            src/include/lwip/apps/mqtt_opts.h
            src/include/lwip/apps/mqtt_priv.h
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.apps.sntp)
    mcux_add_include(
        INCLUDES src/include/lwip/apps
    )

    mcux_add_source(
        SOURCES
            src/include/lwip/apps/sntp.h
            src/include/lwip/apps/sntp_opts.h
            src/apps/sntp/sntp.c
    )
endif ()

# Contrib Echo components

if (CONFIG_MCUX_COMPONENT_middleware.lwip.contrib.tcpecho)
    mcux_add_include(
        INCLUDES contrib/apps/tcpecho
    )
    mcux_add_source(
        SOURCES
            contrib/apps/tcpecho/tcpecho.c
            contrib/apps/tcpecho/tcpecho.h
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.contrib.tcpecho_raw)
    mcux_add_include(
        INCLUDES contrib/apps/tcpecho_raw
    )
    mcux_add_source(
        SOURCES
            contrib/apps/tcpecho_raw/tcpecho_raw.c
            contrib/apps/tcpecho_raw/tcpecho_raw.h
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.contrib.udpecho)
    mcux_add_include(
        INCLUDES contrib/apps/udpecho
    )
    mcux_add_source(
        SOURCES
            contrib/apps/udpecho/udpecho.c
            contrib/apps/udpecho/udpecho.h
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.contrib.udpecho_raw)
    mcux_add_include(
        INCLUDES contrib/apps/udpecho_raw
    )
    mcux_add_source(
        SOURCES
            contrib/apps/udpecho_raw/udpecho_raw.c
            contrib/apps/udpecho_raw/udpecho_raw.h
    )
endif ()

# HTTPD

if (CONFIG_MCUX_COMPONENT_middleware.lwip.apps.httpd.support)
    mcux_add_include(
        INCLUDES
            src/apps/http
            src/include/lwip/apps
    )

    mcux_add_source(
        SOURCES
            src/apps/http/fs.c
            src/apps/http/fsdata.h
            src/apps/http/httpd_structs.h
            src/include/lwip/apps/fs.h
            src/include/lwip/apps/httpd.h
            src/include/lwip/apps/httpd_opts.h
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.apps.httpd)
    mcux_add_source(
        SOURCES src/apps/http/httpd.c
    )
endif ()

# Ethernet ports

if (CONFIG_MCUX_COMPONENT_middleware.lwip.enet_ethernetif)
    mcux_add_include(
        INCLUDES port
    )
    mcux_add_source(
        SOURCES
            port/enet_ethernetif.c
            port/ethernetif.c
            port/ethernetif.h
            port/ethernetif_mmac.c
            port/ethernetif_mmac.h
            port/ethernetif_priv.h
            port/enet_configchecks.h
    )
    mcux_add_source(
        SOURCES
            port/enet_ethernetif_lpc.c
        COMPONENTS
            driver.lpc_enet
    )
    mcux_add_source(
        SOURCES
            port/enet_ethernetif_qos.c
        COMPONENTS
            driver.enet_qos
    )
    mcux_add_macro(
        "-DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1\
         -DLWIP_SUPPORT_CUSTOM_PBUF=1\
         -DCHECKSUM_GEN_UDP=1\
         -DCHECKSUM_GEN_TCP=1\
         -DCHECKSUM_GEN_ICMP=1\
         -DCHECKSUM_GEN_ICMP6=1\
         -DCHECKSUM_CHECK_IP=1\
         -DCHECKSUM_CHECK_UDP=1\
         -DCHECKSUM_CHECK_TCP=1\
         -DCHECKSUM_CHECK_ICMP=1\
         -DCHECKSUM_CHECK_ICMP6=1"
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.kinetis_ethernetif)
    mcux_add_include(
        INCLUDES port
    )
    mcux_add_source(
        SOURCES
            port/enet_ethernetif.c
            port/ethernetif.c
            port/ethernetif.h
            port/ethernetif_mmac.c
            port/ethernetif_mmac.h
            port/ethernetif_priv.h
            port/kinetis_configchecks.h
            port/enet_ethernetif_kinetis.c
    )
    mcux_add_macro(
        "-DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1\
         -DLWIP_SUPPORT_CUSTOM_PBUF=1\
         -DCHECKSUM_GEN_UDP=1\
         -DCHECKSUM_GEN_TCP=1\
         -DCHECKSUM_GEN_ICMP=1\
         -DCHECKSUM_GEN_ICMP6=1\
         -DCHECKSUM_CHECK_UDP=1\
         -DCHECKSUM_CHECK_TCP=1\
         -DCHECKSUM_CHECK_ICMP=1\
         -DCHECKSUM_CHECK_ICMP6=1"
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.netc_ethernetif)
    mcux_add_include(
        INCLUDES port
    )
    mcux_add_source(
        SOURCES
            port/ethernetif.c
            port/ethernetif.h
            port/ethernetif_mmac.h
            port/ethernetif_mmac.c
            port/ethernetif_priv.h
            port/netc_configchecks.h
            port/netc_ethernetif.c
    )
    mcux_add_macro(
        "-DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1\
         -DLWIP_SUPPORT_CUSTOM_PBUF=1\
         -DCHECKSUM_GEN_IP=1\
         -DCHECKSUM_GEN_UDP=1\
         -DCHECKSUM_GEN_TCP=1\
         -DCHECKSUM_GEN_ICMP=1\
         -DCHECKSUM_GEN_ICMP6=1\
         -DCHECKSUM_CHECK_UDP=1\
         -DCHECKSUM_CHECK_TCP=1\
         -DCHECKSUM_CHECK_ICMP=1\
         -DCHECKSUM_CHECK_ICMP6=1"
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.eoe_ethernetif)
    mcux_add_include(
        INCLUDES port
    )
    mcux_add_source(
        SOURCES
            port/eoe_ethernetif.c
            port/eoe_ethernetif.h
    )
    mcux_add_macro(
        "-DCHECKSUM_GEN_IP=1\
         -DCHECKSUM_GEN_UDP=1\
         -DCHECKSUM_GEN_TCP=1\
         -DCHECKSUM_GEN_ICMP=1\
         -DCHECKSUM_CHECK_ICMP=1"
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.empty_ethernetif)
    mcux_add_include(
        INCLUDES port
    )
    mcux_add_source(
        SOURCES README
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.mcx_ethernetif)
    mcux_add_include(
        INCLUDES port
    )
    mcux_add_source(
        SOURCES
            port/enet_ethernetif.c
            port/ethernetif.c
            port/ethernetif.h
            port/ethernetif_mmac.c
            port/ethernetif_mmac.h
            port/ethernetif_priv.h
            port/enet_configchecks.h
            port/enet_ethernetif_lpc.c
    )
    mcux_add_macro(
        "-DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1\
         -DLWIP_SUPPORT_CUSTOM_PBUF=1\
         -DCHECKSUM_GEN_UDP=1\
         -DCHECKSUM_GEN_TCP=1\
         -DCHECKSUM_GEN_ICMP=1\
         -DCHECKSUM_GEN_ICMP6=1\
         -DCHECKSUM_CHECK_IP=1\
         -DCHECKSUM_CHECK_UDP=1\
         -DCHECKSUM_CHECK_TCP=1\
         -DCHECKSUM_CHECK_ICMP=1\
         -DCHECKSUM_CHECK_ICMP6=1"
    )
endif ()

if (CONFIG_MCUX_COMPONENT_middleware.lwip.usb_ethernetif)
    mcux_add_include(
        INCLUDES port
    )
    mcux_add_source(
         SOURCES
            port/usb_ethernetif.h
    )
    if (CONFIG_MCUX_COMPONENT_middleware.lwip.usb_ethernetif.freertos)
        mcux_add_source(
             SOURCES
                port/usb_ethernetif_freertos.c
        )
    endif ()
    if (CONFIG_MCUX_COMPONENT_middleware.lwip.usb_ethernetif.bm)
        mcux_add_source(
             SOURCES
                port/usb_ethernetif_bm.c
        )
    endif ()
endif ()