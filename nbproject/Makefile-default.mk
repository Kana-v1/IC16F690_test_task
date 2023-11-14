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
FINAL_IMAGE=${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c task1/blink.c task2/zero_crossing.c task3/adjust_power.c task4/state_change.c task5/pwr_btn_control.c task6/engine_manage.c general.c task8/change_engine_power.c task9/fltr_handler.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.p1 ${OBJECTDIR}/task1/blink.p1 ${OBJECTDIR}/task2/zero_crossing.p1 ${OBJECTDIR}/task3/adjust_power.p1 ${OBJECTDIR}/task4/state_change.p1 ${OBJECTDIR}/task5/pwr_btn_control.p1 ${OBJECTDIR}/task6/engine_manage.p1 ${OBJECTDIR}/general.p1 ${OBJECTDIR}/task8/change_engine_power.p1 ${OBJECTDIR}/task9/fltr_handler.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/main.p1.d ${OBJECTDIR}/task1/blink.p1.d ${OBJECTDIR}/task2/zero_crossing.p1.d ${OBJECTDIR}/task3/adjust_power.p1.d ${OBJECTDIR}/task4/state_change.p1.d ${OBJECTDIR}/task5/pwr_btn_control.p1.d ${OBJECTDIR}/task6/engine_manage.p1.d ${OBJECTDIR}/general.p1.d ${OBJECTDIR}/task8/change_engine_power.p1.d ${OBJECTDIR}/task9/fltr_handler.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.p1 ${OBJECTDIR}/task1/blink.p1 ${OBJECTDIR}/task2/zero_crossing.p1 ${OBJECTDIR}/task3/adjust_power.p1 ${OBJECTDIR}/task4/state_change.p1 ${OBJECTDIR}/task5/pwr_btn_control.p1 ${OBJECTDIR}/task6/engine_manage.p1 ${OBJECTDIR}/general.p1 ${OBJECTDIR}/task8/change_engine_power.p1 ${OBJECTDIR}/task9/fltr_handler.p1

# Source Files
SOURCEFILES=main.c task1/blink.c task2/zero_crossing.c task3/adjust_power.c task4/state_change.c task5/pwr_btn_control.c task6/engine_manage.c general.c task8/change_engine_power.c task9/fltr_handler.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F690
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task1/blink.p1: task1/blink.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task1" 
	@${RM} ${OBJECTDIR}/task1/blink.p1.d 
	@${RM} ${OBJECTDIR}/task1/blink.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task1/blink.p1 task1/blink.c 
	@-${MV} ${OBJECTDIR}/task1/blink.d ${OBJECTDIR}/task1/blink.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task1/blink.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task2/zero_crossing.p1: task2/zero_crossing.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task2" 
	@${RM} ${OBJECTDIR}/task2/zero_crossing.p1.d 
	@${RM} ${OBJECTDIR}/task2/zero_crossing.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task2/zero_crossing.p1 task2/zero_crossing.c 
	@-${MV} ${OBJECTDIR}/task2/zero_crossing.d ${OBJECTDIR}/task2/zero_crossing.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task2/zero_crossing.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task3/adjust_power.p1: task3/adjust_power.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task3" 
	@${RM} ${OBJECTDIR}/task3/adjust_power.p1.d 
	@${RM} ${OBJECTDIR}/task3/adjust_power.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task3/adjust_power.p1 task3/adjust_power.c 
	@-${MV} ${OBJECTDIR}/task3/adjust_power.d ${OBJECTDIR}/task3/adjust_power.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task3/adjust_power.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task4/state_change.p1: task4/state_change.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task4" 
	@${RM} ${OBJECTDIR}/task4/state_change.p1.d 
	@${RM} ${OBJECTDIR}/task4/state_change.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task4/state_change.p1 task4/state_change.c 
	@-${MV} ${OBJECTDIR}/task4/state_change.d ${OBJECTDIR}/task4/state_change.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task4/state_change.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task5/pwr_btn_control.p1: task5/pwr_btn_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task5" 
	@${RM} ${OBJECTDIR}/task5/pwr_btn_control.p1.d 
	@${RM} ${OBJECTDIR}/task5/pwr_btn_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task5/pwr_btn_control.p1 task5/pwr_btn_control.c 
	@-${MV} ${OBJECTDIR}/task5/pwr_btn_control.d ${OBJECTDIR}/task5/pwr_btn_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task5/pwr_btn_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task6/engine_manage.p1: task6/engine_manage.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task6" 
	@${RM} ${OBJECTDIR}/task6/engine_manage.p1.d 
	@${RM} ${OBJECTDIR}/task6/engine_manage.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task6/engine_manage.p1 task6/engine_manage.c 
	@-${MV} ${OBJECTDIR}/task6/engine_manage.d ${OBJECTDIR}/task6/engine_manage.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task6/engine_manage.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/general.p1: general.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/general.p1.d 
	@${RM} ${OBJECTDIR}/general.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/general.p1 general.c 
	@-${MV} ${OBJECTDIR}/general.d ${OBJECTDIR}/general.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/general.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task8/change_engine_power.p1: task8/change_engine_power.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task8" 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.p1.d 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task8/change_engine_power.p1 task8/change_engine_power.c 
	@-${MV} ${OBJECTDIR}/task8/change_engine_power.d ${OBJECTDIR}/task8/change_engine_power.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task8/change_engine_power.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task9/fltr_handler.p1: task9/fltr_handler.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task9" 
	@${RM} ${OBJECTDIR}/task9/fltr_handler.p1.d 
	@${RM} ${OBJECTDIR}/task9/fltr_handler.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task9/fltr_handler.p1 task9/fltr_handler.c 
	@-${MV} ${OBJECTDIR}/task9/fltr_handler.d ${OBJECTDIR}/task9/fltr_handler.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task9/fltr_handler.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task1/blink.p1: task1/blink.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task1" 
	@${RM} ${OBJECTDIR}/task1/blink.p1.d 
	@${RM} ${OBJECTDIR}/task1/blink.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task1/blink.p1 task1/blink.c 
	@-${MV} ${OBJECTDIR}/task1/blink.d ${OBJECTDIR}/task1/blink.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task1/blink.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task2/zero_crossing.p1: task2/zero_crossing.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task2" 
	@${RM} ${OBJECTDIR}/task2/zero_crossing.p1.d 
	@${RM} ${OBJECTDIR}/task2/zero_crossing.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task2/zero_crossing.p1 task2/zero_crossing.c 
	@-${MV} ${OBJECTDIR}/task2/zero_crossing.d ${OBJECTDIR}/task2/zero_crossing.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task2/zero_crossing.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task3/adjust_power.p1: task3/adjust_power.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task3" 
	@${RM} ${OBJECTDIR}/task3/adjust_power.p1.d 
	@${RM} ${OBJECTDIR}/task3/adjust_power.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task3/adjust_power.p1 task3/adjust_power.c 
	@-${MV} ${OBJECTDIR}/task3/adjust_power.d ${OBJECTDIR}/task3/adjust_power.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task3/adjust_power.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task4/state_change.p1: task4/state_change.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task4" 
	@${RM} ${OBJECTDIR}/task4/state_change.p1.d 
	@${RM} ${OBJECTDIR}/task4/state_change.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task4/state_change.p1 task4/state_change.c 
	@-${MV} ${OBJECTDIR}/task4/state_change.d ${OBJECTDIR}/task4/state_change.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task4/state_change.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task5/pwr_btn_control.p1: task5/pwr_btn_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task5" 
	@${RM} ${OBJECTDIR}/task5/pwr_btn_control.p1.d 
	@${RM} ${OBJECTDIR}/task5/pwr_btn_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task5/pwr_btn_control.p1 task5/pwr_btn_control.c 
	@-${MV} ${OBJECTDIR}/task5/pwr_btn_control.d ${OBJECTDIR}/task5/pwr_btn_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task5/pwr_btn_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task6/engine_manage.p1: task6/engine_manage.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task6" 
	@${RM} ${OBJECTDIR}/task6/engine_manage.p1.d 
	@${RM} ${OBJECTDIR}/task6/engine_manage.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task6/engine_manage.p1 task6/engine_manage.c 
	@-${MV} ${OBJECTDIR}/task6/engine_manage.d ${OBJECTDIR}/task6/engine_manage.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task6/engine_manage.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/general.p1: general.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/general.p1.d 
	@${RM} ${OBJECTDIR}/general.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/general.p1 general.c 
	@-${MV} ${OBJECTDIR}/general.d ${OBJECTDIR}/general.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/general.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task8/change_engine_power.p1: task8/change_engine_power.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task8" 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.p1.d 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task8/change_engine_power.p1 task8/change_engine_power.c 
	@-${MV} ${OBJECTDIR}/task8/change_engine_power.d ${OBJECTDIR}/task8/change_engine_power.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task8/change_engine_power.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task9/fltr_handler.p1: task9/fltr_handler.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task9" 
	@${RM} ${OBJECTDIR}/task9/fltr_handler.p1.d 
	@${RM} ${OBJECTDIR}/task9/fltr_handler.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task9/fltr_handler.p1 task9/fltr_handler.c 
	@-${MV} ${OBJECTDIR}/task9/fltr_handler.d ${OBJECTDIR}/task9/fltr_handler.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task9/fltr_handler.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/handrex_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
