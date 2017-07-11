# Detect the word-size for the current platform ...
MESSAGE(STATUS "checking the width of (int*) for this platform")

TRY_RUN(
    PONYPROG_PLATFORM_SIZE_TYPE
    PONYPROG_PLATFORM_SIZE_TYPE_COMPILE
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/size_type.cpp)

MESSAGE(STATUS "  (int*) is ${PONYPROG_PLATFORM_SIZE_TYPE} bits")

IF(PONYPROG_PLATFORM_SIZE_TYPE EQUAL 32)
    SET(PONYPROG_UINT_T_32_BITS 1)
ELSEIF(PONYPROG_PLATFORM_SIZE_TYPE EQUAL 64)
    SET(PONYPROG_UINT_T_64_BITS 1)
ELSE(PONYPROG_PLATFORM_SIZE_TYPE EQUAL 32)
    MESSAGE(SEND_ERROR "Error detecting platform word-size.")
ENDIF(PONYPROG_PLATFORM_SIZE_TYPE EQUAL 32)
