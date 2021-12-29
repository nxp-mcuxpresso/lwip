message("middleware_lwip_enet_ethernetif component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/port/enet_ethernetif.c
    ${CMAKE_CURRENT_LIST_DIR}/port/ethernetif.c
    ${CMAKE_CURRENT_LIST_DIR}/port/ethernetif_mmac.c
    ${CMAKE_CURRENT_LIST_DIR}/port/enet_ethernetif_kinetis.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/port
)

include(middleware_lwip)
include(driver_phy-common)
include(driver_enet)
