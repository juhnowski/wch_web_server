################################################################################
# MRS Version: 1.9.1
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include NetLib/subdir.mk
-include HTTP/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
WebServer.hex \

SECONDARY_LIST += \
WebServer.lst \

SECONDARY_SIZE += \
WebServer.siz \


# All Target
all: WebServer.elf secondary-outputs

# Tool invocations
WebServer.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -T "C:\CH\CH32V307EVT\EVT\EXAM\ETH\WebServer\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -L"C:\CH\CH32V307EVT\EVT\EXAM\ETH\NetLib" -Wl,-Map,"WebServer.map" --specs=nano.specs --specs=nosys.specs -o "WebServer.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lprintf
	@	@
WebServer.hex: WebServer.elf
	@	riscv-none-embed-objcopy -O ihex "WebServer.elf"  "WebServer.hex"
	@	@
WebServer.lst: WebServer.elf
	@	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide -M xw "WebServer.elf" > "WebServer.lst"
	@	@
WebServer.siz: WebServer.elf
	@	riscv-none-embed-size --format=berkeley "WebServer.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) WebServer.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
