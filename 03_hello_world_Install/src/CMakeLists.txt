add_executable(hello main.c)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
install(TARGETS hello RUNTIME DESTINATION bin)