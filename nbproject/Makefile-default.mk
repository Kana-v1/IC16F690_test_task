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
SOURCEFILES_QUOTED_IF_SPACED=task1/blink.h task2/zero_crossing.h task3/adjust_power.h general.h task4/state_change.h task5/pwr_btn_control.h task6/engine_manage.h main.c task1/blink.c task2/zero_crossing.c task3/adjust_power.c task4/state_change.c task5/pwr_btn_control.c task6/engine_manage.c general.c task8/change_engine_power.h task8/change_engine_power.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/task1/blink.o ${OBJECTDIR}/task2/zero_crossing.o ${OBJECTDIR}/task3/adjust_power.o ${OBJECTDIR}/general.o ${OBJECTDIR}/task4/state_change.o ${OBJECTDIR}/task5/pwr_btn_control.o ${OBJECTDIR}/task6/engine_manage.o ${OBJECTDIR}/main.p1 ${OBJECTDIR}/task1/blink.p1 ${OBJECTDIR}/task2/zero_crossing.p1 ${OBJECTDIR}/task3/adjust_power.p1 ${OBJECTDIR}/task4/state_change.p1 ${OBJECTDIR}/task5/pwr_btn_control.p1 ${OBJECTDIR}/task6/engine_manage.p1 ${OBJECTDIR}/general.p1 ${OBJECTDIR}/task8/change_engine_power.o ${OBJECTDIR}/task8/change_engine_power.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/task1/blink.o.d ${OBJECTDIR}/task2/zero_crossing.o.d ${OBJECTDIR}/task3/adjust_power.o.d ${OBJECTDIR}/general.o.d ${OBJECTDIR}/task4/state_change.o.d ${OBJECTDIR}/task5/pwr_btn_control.o.d ${OBJECTDIR}/task6/engine_manage.o.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/task1/blink.p1.d ${OBJECTDIR}/task2/zero_crossing.p1.d ${OBJECTDIR}/task3/adjust_power.p1.d ${OBJECTDIR}/task4/state_change.p1.d ${OBJECTDIR}/task5/pwr_btn_control.p1.d ${OBJECTDIR}/task6/engine_manage.p1.d ${OBJECTDIR}/general.p1.d ${OBJECTDIR}/task8/change_engine_power.o.d ${OBJECTDIR}/task8/change_engine_power.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/task1/blink.o ${OBJECTDIR}/task2/zero_crossing.o ${OBJECTDIR}/task3/adjust_power.o ${OBJECTDIR}/general.o ${OBJECTDIR}/task4/state_change.o ${OBJECTDIR}/task5/pwr_btn_control.o ${OBJECTDIR}/task6/engine_manage.o ${OBJECTDIR}/main.p1 ${OBJECTDIR}/task1/blink.p1 ${OBJECTDIR}/task2/zero_crossing.p1 ${OBJECTDIR}/task3/adjust_power.p1 ${OBJECTDIR}/task4/state_change.p1 ${OBJECTDIR}/task5/pwr_btn_control.p1 ${OBJECTDIR}/task6/engine_manage.p1 ${OBJECTDIR}/general.p1 ${OBJECTDIR}/task8/change_engine_power.o ${OBJECTDIR}/task8/change_engine_power.p1

# Source Files
SOURCEFILES=task1/blink.h task2/zero_crossing.h task3/adjust_power.h general.h task4/state_change.h task5/pwr_btn_control.h task6/engine_manage.h main.c task1/blink.c task2/zero_crossing.c task3/adjust_power.c task4/state_change.c task5/pwr_btn_control.c task6/engine_manage.c general.c task8/change_engine_power.h task8/change_engine_power.c



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
${OBJECTDIR}/task1/blink.o: task1/blink.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task1" 
	@${RM} ${OBJECTDIR}/task1/blink.o.d 
	@${RM} ${OBJECTDIR}/task1/blink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task1/blink.o task1/blink.h 
	@-${MV} ${OBJECTDIR}/task1/blink.d ${OBJECTDIR}/task1/blink.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task1/blink.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task2/zero_crossing.o: task2/zero_crossing.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task2" 
	@${RM} ${OBJECTDIR}/task2/zero_crossing.o.d 
	@${RM} ${OBJECTDIR}/task2/zero_crossing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task2/zero_crossing.o task2/zero_crossing.h 
	@-${MV} ${OBJECTDIR}/task2/zero_crossing.d ${OBJECTDIR}/task2/zero_crossing.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task2/zero_crossing.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task3/adjust_power.o: task3/adjust_power.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task3" 
	@${RM} ${OBJECTDIR}/task3/adjust_power.o.d 
	@${RM} ${OBJECTDIR}/task3/adjust_power.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task3/adjust_power.o task3/adjust_power.h 
	@-${MV} ${OBJECTDIR}/task3/adjust_power.d ${OBJECTDIR}/task3/adjust_power.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task3/adjust_power.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/general.o: general.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/general.o.d 
	@${RM} ${OBJECTDIR}/general.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/general.o general.h 
	@-${MV} ${OBJECTDIR}/general.d ${OBJECTDIR}/general.o.d 
	@${FIXDEPS} ${OBJECTDIR}/general.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task4/state_change.o: task4/state_change.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task4" 
	@${RM} ${OBJECTDIR}/task4/state_change.o.d 
	@${RM} ${OBJECTDIR}/task4/state_change.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task4/state_change.o task4/state_change.h 
	@-${MV} ${OBJECTDIR}/task4/state_change.d ${OBJECTDIR}/task4/state_change.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task4/state_change.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task5/pwr_btn_control.o: task5/pwr_btn_control.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task5" 
	@${RM} ${OBJECTDIR}/task5/pwr_btn_control.o.d 
	@${RM} ${OBJECTDIR}/task5/pwr_btn_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task5/pwr_btn_control.o task5/pwr_btn_control.h 
	@-${MV} ${OBJECTDIR}/task5/pwr_btn_control.d ${OBJECTDIR}/task5/pwr_btn_control.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task5/pwr_btn_control.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task6/engine_manage.o: task6/engine_manage.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task6" 
	@${RM} ${OBJECTDIR}/task6/engine_manage.o.d 
	@${RM} ${OBJECTDIR}/task6/engine_manage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task6/engine_manage.o task6/engine_manage.h 
	@-${MV} ${OBJECTDIR}/task6/engine_manage.d ${OBJECTDIR}/task6/engine_manage.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task6/engine_manage.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/task8/change_engine_power.o: task8/change_engine_power.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task8" 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.o.d 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task8/change_engine_power.o task8/change_engine_power.h 
	@-${MV} ${OBJECTDIR}/task8/change_engine_power.d ${OBJECTDIR}/task8/change_engine_power.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task8/change_engine_power.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task8/change_engine_power.p1: task8/change_engine_power.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task8" 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.p1.d 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task8/change_engine_power.p1 task8/change_engine_power.c 
	@-${MV} ${OBJECTDIR}/task8/change_engine_power.d ${OBJECTDIR}/task8/change_engine_power.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task8/change_engine_power.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/task1/blink.o: task1/blink.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task1" 
	@${RM} ${OBJECTDIR}/task1/blink.o.d 
	@${RM} ${OBJECTDIR}/task1/blink.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task1/blink.o task1/blink.h 
	@-${MV} ${OBJECTDIR}/task1/blink.d ${OBJECTDIR}/task1/blink.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task1/blink.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task2/zero_crossing.o: task2/zero_crossing.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task2" 
	@${RM} ${OBJECTDIR}/task2/zero_crossing.o.d 
	@${RM} ${OBJECTDIR}/task2/zero_crossing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task2/zero_crossing.o task2/zero_crossing.h 
	@-${MV} ${OBJECTDIR}/task2/zero_crossing.d ${OBJECTDIR}/task2/zero_crossing.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task2/zero_crossing.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task3/adjust_power.o: task3/adjust_power.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task3" 
	@${RM} ${OBJECTDIR}/task3/adjust_power.o.d 
	@${RM} ${OBJECTDIR}/task3/adjust_power.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task3/adjust_power.o task3/adjust_power.h 
	@-${MV} ${OBJECTDIR}/task3/adjust_power.d ${OBJECTDIR}/task3/adjust_power.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task3/adjust_power.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/general.o: general.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/general.o.d 
	@${RM} ${OBJECTDIR}/general.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/general.o general.h 
	@-${MV} ${OBJECTDIR}/general.d ${OBJECTDIR}/general.o.d 
	@${FIXDEPS} ${OBJECTDIR}/general.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task4/state_change.o: task4/state_change.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task4" 
	@${RM} ${OBJECTDIR}/task4/state_change.o.d 
	@${RM} ${OBJECTDIR}/task4/state_change.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task4/state_change.o task4/state_change.h 
	@-${MV} ${OBJECTDIR}/task4/state_change.d ${OBJECTDIR}/task4/state_change.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task4/state_change.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task5/pwr_btn_control.o: task5/pwr_btn_control.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task5" 
	@${RM} ${OBJECTDIR}/task5/pwr_btn_control.o.d 
	@${RM} ${OBJECTDIR}/task5/pwr_btn_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task5/pwr_btn_control.o task5/pwr_btn_control.h 
	@-${MV} ${OBJECTDIR}/task5/pwr_btn_control.d ${OBJECTDIR}/task5/pwr_btn_control.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task5/pwr_btn_control.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task6/engine_manage.o: task6/engine_manage.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task6" 
	@${RM} ${OBJECTDIR}/task6/engine_manage.o.d 
	@${RM} ${OBJECTDIR}/task6/engine_manage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task6/engine_manage.o task6/engine_manage.h 
	@-${MV} ${OBJECTDIR}/task6/engine_manage.d ${OBJECTDIR}/task6/engine_manage.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task6/engine_manage.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
	
${OBJECTDIR}/task8/change_engine_power.o: task8/change_engine_power.h  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task8" 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.o.d 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task8/change_engine_power.o task8/change_engine_power.h 
	@-${MV} ${OBJECTDIR}/task8/change_engine_power.d ${OBJECTDIR}/task8/change_engine_power.o.d 
	@${FIXDEPS} ${OBJECTDIR}/task8/change_engine_power.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/task8/change_engine_power.p1: task8/change_engine_power.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/task8" 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.p1.d 
	@${RM} ${OBJECTDIR}/task8/change_engine_power.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/task8/change_engine_power.p1 task8/change_engine_power.c 
	@-${MV} ${OBJECTDIR}/task8/change_engine_power.d ${OBJECTDIR}/task8/change_engine_power.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/task8/change_engine_power.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
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
