################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/i2c/fsl_adapter_i2c.c 

C_DEPS += \
./component/i2c/fsl_adapter_i2c.d 

OBJS += \
./component/i2c/fsl_adapter_i2c.o 


# Each subdirectory must supply rules for building sources it contributes
component/i2c/%.o: ../component/i2c/%.c component/i2c/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK66FN2M0VMD18 -DCPU_MK66FN2M0VMD18_cm4 -DFRDM_K66F -DFREEDOM -DSDK_I2C_BASED_COMPONENT_USED=1 -DBOARD_USE_CODEC=1 -DCODEC_DA7212_ENABLE -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSD_ENABLED -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\source" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\sdmmc\host" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\sdmmc\inc" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\sdmmc\osa" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\drivers" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\codec" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\codec\port\da7212" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\codec\port" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\component\i2c" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\utilities" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\device" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\component\uart" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\component\lists" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\component\osa" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\CMSIS" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\board" -O0 -fno-common -g3 -gdwarf-4 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-i2c

clean-component-2f-i2c:
	-$(RM) ./component/i2c/fsl_adapter_i2c.d ./component/i2c/fsl_adapter_i2c.o

.PHONY: clean-component-2f-i2c

