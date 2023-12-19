#Description: lwIP IPERF; user_visible: True
include_guard(GLOBAL)
message("middleware_lwip_apps_lwiperf component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/src/apps/lwiperf/lwiperf.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/src/include/lwip/apps
)

#OR Logic component
if(CONFIG_USE_middleware_baremetal) 
    include(middleware_baremetal)
endif()
if(CONFIG_USE_middleware_freertos-kernel_MIMXRT595S_cm33) 
    include(middleware_freertos-kernel_MIMXRT595S_cm33)
endif()

include(middleware_lwip_MIMXRT595S_cm33)
