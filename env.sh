#!/bin/sh


if [ $ZERO_MCU_HOME ]; then
    echo "ZERO_MCU_HOME=$ZERO_MCU_HOME"
else
    echo "ZERO_MCU_HOME not set, using current path"
    export ZERO_MCU_HOME=$(cd "$(dirname "$0")"; pwd)
    echo "ZERO_MCU_HOME=$ZERO_MCU_HOME"
fi
export ZERO_SDK_PATH=$ZERO_MCU_HOME

export ZERO_3RD_PATH=$ZERO_SDK_PATH/3rd-party

export ZERO_TOOLCHAIN_PATH=$ZERO_SDK_PATH/toolchain

export ZERO_GCC_TOOLCHAIN_PREFIX=$ZERO_TOOLCHAIN_PATH/gcc-arm-none-eabi-5_4-2016q3

export ZERO_STM32_CMAKE_TOOLCHAIN_FILE=$ZERO_TOOLCHAIN_PATH/cmake/gcc_stm32.cmake

