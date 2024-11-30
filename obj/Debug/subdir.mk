################################################################################
# MRS Version: 1.9.1
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/CH/CH32V307EVT/EVT/EXAM/SRC/Debug/debug.c 

OBJS += \
./Debug/debug.o 

C_DEPS += \
./Debug/debug.d 


# Each subdirectory must supply rules for building sources it contributes
Debug/debug.o: C:/CH/CH32V307EVT/EVT/EXAM/SRC/Debug/debug.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"C:\CH\CH32V307EVT\EVT\EXAM\ETH\NetLib" -I"C:\CH\CH32V307EVT\EVT\EXAM\ETH\WebServer\HTTP" -I"C:\CH\CH32V307EVT\EVT\EXAM\SRC\Core" -I"C:\CH\CH32V307EVT\EVT\EXAM\SRC\Debug" -I"C:\CH\CH32V307EVT\EVT\EXAM\SRC\Peripheral\inc" -I"C:\CH\CH32V307EVT\EVT\EXAM\ETH\WebServer\User" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

