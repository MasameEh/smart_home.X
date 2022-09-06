#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/smart_home.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/smart_home.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c ../AVR_Drivers/MCAL/DIO/dio.c ../AVR_Drivers/MCAL/ADC/adc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/141060047/dio.o ${OBJECTDIR}/_ext/141063097/adc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/141060047/dio.o.d ${OBJECTDIR}/_ext/141063097/adc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/141060047/dio.o ${OBJECTDIR}/_ext/141063097/adc.o

# Source Files
SOURCEFILES=main.c ../AVR_Drivers/MCAL/DIO/dio.c ../AVR_Drivers/MCAL/ADC/adc.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/atmega32"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/smart_home.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/fee8b0d862fc4c6ffe8d06a850c8d22a2f553dea .generated_files/flags/default/d9c3bce44600cfef5c75edac263b06f5cb18dfc8
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/141060047/dio.o: ../AVR_Drivers/MCAL/DIO/dio.c  .generated_files/flags/default/4db5e30f10fc1d0b81462e5236222f6f71d1640e .generated_files/flags/default/d9c3bce44600cfef5c75edac263b06f5cb18dfc8
	@${MKDIR} "${OBJECTDIR}/_ext/141060047" 
	@${RM} ${OBJECTDIR}/_ext/141060047/dio.o.d 
	@${RM} ${OBJECTDIR}/_ext/141060047/dio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/141060047/dio.o.d" -MT "${OBJECTDIR}/_ext/141060047/dio.o.d" -MT ${OBJECTDIR}/_ext/141060047/dio.o  -o ${OBJECTDIR}/_ext/141060047/dio.o ../AVR_Drivers/MCAL/DIO/dio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/141063097/adc.o: ../AVR_Drivers/MCAL/ADC/adc.c  .generated_files/flags/default/48008c7ce5f078815d64065244f1410542df9339 .generated_files/flags/default/d9c3bce44600cfef5c75edac263b06f5cb18dfc8
	@${MKDIR} "${OBJECTDIR}/_ext/141063097" 
	@${RM} ${OBJECTDIR}/_ext/141063097/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/141063097/adc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/141063097/adc.o.d" -MT "${OBJECTDIR}/_ext/141063097/adc.o.d" -MT ${OBJECTDIR}/_ext/141063097/adc.o  -o ${OBJECTDIR}/_ext/141063097/adc.o ../AVR_Drivers/MCAL/ADC/adc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/a31eba158092f987132a394cc7d44463dfd0c9ef .generated_files/flags/default/d9c3bce44600cfef5c75edac263b06f5cb18dfc8
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/141060047/dio.o: ../AVR_Drivers/MCAL/DIO/dio.c  .generated_files/flags/default/da26b2186becee8df68837126f4657b0f44ea026 .generated_files/flags/default/d9c3bce44600cfef5c75edac263b06f5cb18dfc8
	@${MKDIR} "${OBJECTDIR}/_ext/141060047" 
	@${RM} ${OBJECTDIR}/_ext/141060047/dio.o.d 
	@${RM} ${OBJECTDIR}/_ext/141060047/dio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/141060047/dio.o.d" -MT "${OBJECTDIR}/_ext/141060047/dio.o.d" -MT ${OBJECTDIR}/_ext/141060047/dio.o  -o ${OBJECTDIR}/_ext/141060047/dio.o ../AVR_Drivers/MCAL/DIO/dio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/141063097/adc.o: ../AVR_Drivers/MCAL/ADC/adc.c  .generated_files/flags/default/75aa9d7868a7d7fc2dda3fc85a7443609c6af8d0 .generated_files/flags/default/d9c3bce44600cfef5c75edac263b06f5cb18dfc8
	@${MKDIR} "${OBJECTDIR}/_ext/141063097" 
	@${RM} ${OBJECTDIR}/_ext/141063097/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/141063097/adc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atmega32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/141063097/adc.o.d" -MT "${OBJECTDIR}/_ext/141063097/adc.o.d" -MT ${OBJECTDIR}/_ext/141063097/adc.o  -o ${OBJECTDIR}/_ext/141063097/adc.o ../AVR_Drivers/MCAL/ADC/adc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/smart_home.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atmega32 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\smart_home.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/smart_home.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/smart_home.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atmega32 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}\smart_home.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/smart_home.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/smart_home.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/smart_home.X.${IMAGE_TYPE}.hex"
	
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
