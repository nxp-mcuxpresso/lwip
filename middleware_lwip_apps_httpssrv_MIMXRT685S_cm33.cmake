#Description: lwIP HTTPS Server; user_visible: True
include_guard(GLOBAL)
message("middleware_lwip_apps_httpssrv component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/src/apps/httpsrv
)


include(middleware_lwip_apps_httpsrv_MIMXRT685S_cm33)
include(middleware_mbedtls_MIMXRT685S_cm33)
