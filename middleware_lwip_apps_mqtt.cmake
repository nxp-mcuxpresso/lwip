#Description: lwIP MQTT Client; user_visible: True
include_guard(GLOBAL)
message("middleware_lwip_apps_mqtt component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/src/apps/mqtt/mqtt.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/src/include/lwip/apps
)

#OR Logic component
if(${MCUX_DEVICE} STREQUAL "RW610")
    include(middleware_lwip_RW612)
endif()
if(${MCUX_DEVICE} STREQUAL "RW612")
    include(middleware_lwip_RW612)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1166_cm4")
    include(middleware_lwip_MIMXRT1166_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1166_cm7")
    include(middleware_lwip_MIMXRT1166_cm7)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1052")
    include(middleware_lwip_MIMXRT1052)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1064")
    include(middleware_lwip_MIMXRT1064)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54S016")
    include(middleware_lwip_LPC54S018)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54606")
    include(middleware_lwip_LPC54628)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54616")
    include(middleware_lwip_LPC54628)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54016")
    include(middleware_lwip_LPC54S018)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54018")
    include(middleware_lwip_LPC54S018)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54628")
    include(middleware_lwip_LPC54628)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1173_cm4")
    include(middleware_lwip_MIMXRT1176_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1173_cm7")
    include(middleware_lwip_MIMXRT1176_cm7)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1051")
    include(middleware_lwip_MIMXRT1052)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54618")
    include(middleware_lwip_LPC54628)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1021")
    include(middleware_lwip_MIMXRT1021)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54018M")
    include(middleware_lwip_LPC54S018M)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1062")
    include(middleware_lwip_MIMXRT1062)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54S018")
    include(middleware_lwip_LPC54S018)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1042")
    include(middleware_lwip_MIMXRT1042)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1176_cm4")
    include(middleware_lwip_MIMXRT1176_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1176_cm7")
    include(middleware_lwip_MIMXRT1176_cm7)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1175_cm4")
    include(middleware_lwip_MIMXRT1176_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1175_cm7")
    include(middleware_lwip_MIMXRT1176_cm7)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54S018M")
    include(middleware_lwip_LPC54S018M)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1061")
    include(middleware_lwip_MIMXRT1062)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1165_cm4")
    include(middleware_lwip_MIMXRT1166_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1165_cm7")
    include(middleware_lwip_MIMXRT1166_cm7)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1171_cm7")
    include(middleware_lwip_MIMXRT1176_cm7)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1024")
    include(middleware_lwip_MIMXRT1024)
endif()
if(${MCUX_DEVICE} STREQUAL "LPC54608")
    include(middleware_lwip_LPC54628)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1172_cm7")
    include(middleware_lwip_MIMXRT1176_cm7)
endif()

