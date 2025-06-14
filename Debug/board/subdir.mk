################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/pin_mux.c \
../board/sdmmc_config.c 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/pin_mux.d \
./board/sdmmc_config.d 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/pin_mux.o \
./board/sdmmc_config.o 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c board/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK66FN2M0VMD18 -DCPU_MK66FN2M0VMD18_cm4 -DFRDM_K66F -DFREEDOM -DSDK_I2C_BASED_COMPONENT_USED=1 -DBOARD_USE_CODEC=1 -DCODEC_DA7212_ENABLE -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSD_ENABLED -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\source" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\sdmmc\host" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\sdmmc\inc" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\sdmmc\osa" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\drivers" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\codec" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\codec\port\da7212" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\codec\port" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\component\i2c" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\utilities" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\device" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\component\uart" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\component\lists" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\component\osa" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\CMSIS" -I"C:\Users\heyan\Downloads\MCUXpressoProject\MP3\board" -O0 -fno-common -g3 -gdwarf-4 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-board

clean-board:
	-$(RM) ./board/board.d ./board/board.o ./board/clock_config.d ./board/clock_config.o ./board/pin_mux.d ./board/pin_mux.o ./board/sdmmc_config.d ./board/sdmmc_config.o

.PHONY: clean-board

