# [objective]
# CMake による fortran プログラムの分割コンパイル方法の確認

add_library(
    sample
    STATIC
    ${CMAKE_CURRENT_SOURCE_DIR}/module.f90
)
