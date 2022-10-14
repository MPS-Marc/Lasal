//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "cmMotor"
	Revision           = "1.0"
	GUID               = "{A6684A19-6606-4283-8C74-05ECAEA8E942}"
	RealtimeTask       = "false"
	CyclicTask         = "true"
	DefCyclictime      = "10 ms"
	BackgroundTask     = "true"
	DefBackground      = "500 ms"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(630,840)">
	<Channels>
		<Server Name="parMinTimeBetweenRev" GUID="{6CD40243-4F98-4E78-B646-B1DAAD7FB570}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="File"/>
		<Server Name="parSpeed" GUID="{A18D942E-2C31-4F6E-A880-F7FF4463602F}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="parStartingTime" GUID="{9D9767CD-1E7B-4E7F-947E-7306C1A017F5}" Visualized="true" Initialize="true" DefValue="2000" WriteProtected="false" Retentive="File"/>
		<Server Name="parTimeOutTime" GUID="{1EE74E8D-3A4D-4FDC-9CB3-B6AB80FF7563}" Visualized="true" Initialize="true" DefValue="20000" WriteProtected="false" Retentive="File"/>
		<Server Name="stsBwd" GUID="{4E152640-2079-4E68-9139-401B9631B4D1}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="stsFwd" GUID="{2E505765-0F92-485C-BD3F-3344AFDB29F7}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="stsStateRun" GUID="{284E0EC7-0FB6-4DCE-BEE8-CA0170ACC8EC}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Client Name="iFeedback" Required="false" Internal="false"/>
		<Client Name="iHWAlarm" Required="false" Internal="false" Comment="if used as btb, set sInvert"/>
		<Client Name="iThermFailure" Required="false" Internal="false" Comment="if used, connect thermical failure input,&#13;&#10;normally this input is high if there is a failure&#13;&#10;Else just set sInvert param"/>
		<Client Name="oBwd" Required="false" Internal="false"/>
		<Client Name="oFwd" Required="false" Internal="false"/>
		<Client Name="oSpeed" Required="false" Internal="false"/>
		<Client Name="sInvertFeedback" Required="false" Internal="false"/>
		<Client Name="sInvertHWAlarm" Required="false" Internal="false"/>
		<Client Name="sInvertThermFailure" Required="false" Internal="false"/>
		<Client Name="sMaxSpeedIn" Required="false" Internal="false" DefValue="1000"/>
		<Client Name="sMaxSpeedOut" Required="false" Internal="false" DefValue="10000"/>
		<Client Name="sMinSpeedIn" Required="false" Internal="false" DefValue="0"/>
		<Client Name="sMinSpeedOut" Required="false" Internal="false" DefValue="0"/>
	</Channels>
	<RevDoku>
		<Owner/>
		<Dokumentation Revision="0.1" Date="2019-12-13" Author="JdK&#13;&#10;" Company="vd" Description="calculation speed out is corrected, also added alarm for speed in out of borders"/>
	</RevDoku>
	<Network Name="cmMotor">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{70F6BDF4-4771-4096-874B-4AB3031D85AC}"
				Class      = "cmBase"
				Position   = "(218,120)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Server Name="cmdHMI"/>
					<Server Name="ErrorNr"/>
					<Server Name="mode"/>
					<Server Name="state"/>
					<Server Name="stsHMI_RunsAllowed"/>
					<Server Name="stsInAlarm"/>
					<Server Name="stsIsInterlocked"/>
					<Client Name="id"/>
					<Client Name="nwEmOrUnit"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.ClassSvr" Destination="_base.ClassSvr" Vertices="(1036,210),(864,210),"/>
			<Connection Source="this.state" Destination="_base.state" Vertices="(1036,270),(864,270),"/>
			<Connection Source="this.mode" Destination="_base.mode" Vertices="(1036,330),(864,330),"/>
			<Connection Source="this.cmdHMI" Destination="_base.cmdHMI" Vertices="(1036,390),(864,390),"/>
			<Connection Source="this.stsInAlarm" Destination="_base.stsInAlarm" Vertices="(1036,450),(864,510),"/>
			<Connection Source="this.stsIsInterlocked" Destination="_base.stsIsInterlocked" Vertices="(1036,510),(864,570),"/>
			<Connection Source="this.ErrorNr" Destination="_base.ErrorNr" Vertices="(1036,630),(864,690),"/>
			<Connection Source="_base.nwEmOrUnit" Destination="this.nwEmOrUnit" Vertices="(218,210),(38,210),"/>
			<Connection Source="_base.id" Destination="this.id" Vertices="(218,270),(38,270),"/>
			<Connection Source="this.stsHMI_RunsAllowed" Destination="_base.stsHMI_RunsAllowed" Vertices="(1036,570),(864,630),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using cmBase

cmMotor : CLASS
: cmBase
  //Servers:
	stsStateRun 	: SvrCh_motorPos;
	parTimeOutTime 	: SvrCh_UDINT;
	parStartingTime 	: SvrCh_UDINT;
	parMinTimeBetweenRev 	: SvrCh_UDINT;
	parSpeed 	: SvrCh_DINT;
	stsFwd 	: SvrCh_DINT;
	stsBwd 	: SvrCh_DINT;
  //Clients:
	iThermFailure 	: CltCh_DINT;
	iHWAlarm 	: CltCh_DINT;
	iFeedback 	: CltCh_DINT;
	oFwd 	: CltCh_DINT;
	oBwd 	: CltCh_DINT;
	oSpeed 	: CltCh_DINT;
	sInvertThermFailure 	: CltCh_DINT;
	sInvertHWAlarm 	: CltCh_DINT;
	sInvertFeedback 	: CltCh_DINT;
	sMinSpeedOut 	: CltCh_DINT;
	sMaxSpeedOut 	: CltCh_DINT;
	sMinSpeedIn 	: CltCh_DINT;
	sMaxSpeedIn 	: CltCh_DINT;
  //Variables:
		timerFeedback 	: strTimer;
		timerStarting 	: strTimer;
		timerFwdStopped 	: strTimer;
		timerBwdStopped 	: strTimer;
		feedbackConnected 	: DINT;
		tmpOSpeed 	: REAL;
		tmpThermFailure 	: DINT;
		tmpHWAlarm 	: DINT;
		tmpFeedback 	: DINT;
		tmpStartedHMI 	: DINT;
		tmpStartedCS 	: DINT;
		tmpOldSpeed 	: DINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Background
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL execHmiCmd1;
	
	FUNCTION VIRTUAL execHmiCmd2;
	
	FUNCTION VIRTUAL interlock;
	
	FUNCTION VIRTUAL work;
	
	FUNCTION VIRTUAL execStop;
	
	FUNCTION VIRTUAL Init1;
	
	FUNCTION VIRTUAL preScanOverride;
	
	FUNCTION VIRTUAL postScanOverride;
	
	FUNCTION GLOBAL csStartFwd
		VAR_INPUT
			speed 	: DINT;
		END_VAR;
	
	FUNCTION GLOBAL csStartBwd
		VAR_INPUT
			speed 	: DINT;
		END_VAR;
	
	FUNCTION GLOBAL csStop;
	
	FUNCTION StartFwd;
	
	FUNCTION StartBwd;
	
	FUNCTION StopRunning;
	
	FUNCTION GLOBAL updateSpeed
		VAR_INPUT
			speed 	: DINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB cmMotor::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CMMOTOR
1$UINT, 0$UINT, (SIZEOF(::cmMotor))$UINT, 
7$UINT, 13$UINT, 0$UINT, 
TO_UDINT(2708248773), "cmMotor", //Class
TO_UDINT(1325959504), "cmBase", 1$UINT, 0$UINT, //Baseclass
//Servers:
(::cmMotor.stsStateRun.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3775221596), "stsStateRun", 
(::cmMotor.parTimeOutTime.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(4183149504), "parTimeOutTime", 
(::cmMotor.parStartingTime.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(3847215202), "parStartingTime", 
(::cmMotor.parMinTimeBetweenRev.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(2865059822), "parMinTimeBetweenRev", 
(::cmMotor.parSpeed.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2909679813), "parSpeed", 
(::cmMotor.stsFwd.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3752832469), "stsFwd", 
(::cmMotor.stsBwd.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3634758921), "stsBwd", 
//Clients:
(::cmMotor.iThermFailure.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1938232469), "iThermFailure", 
(::cmMotor.iHWAlarm.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1886811790), "iHWAlarm", 
(::cmMotor.iFeedback.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(3842025103), "iFeedback", 
(::cmMotor.oFwd.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(309274655), "oFwd", 
(::cmMotor.oBwd.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(359039171), "oBwd", 
(::cmMotor.oSpeed.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1906102849), "oSpeed", 
(::cmMotor.sInvertThermFailure.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1391563518), "sInvertThermFailure", 
(::cmMotor.sInvertHWAlarm.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(793597762), "sInvertHWAlarm", 
(::cmMotor.sInvertFeedback.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2005734197), "sInvertFeedback", 
(::cmMotor.sMinSpeedOut.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2861794971), "sMinSpeedOut", 
(::cmMotor.sMaxSpeedOut.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1721695636), "sMaxSpeedOut", 
(::cmMotor.sMinSpeedIn.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1251990134), "sMinSpeedIn", 
(::cmMotor.sMaxSpeedIn.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1267941570), "sMaxSpeedIn", 
END_FUNCTION


#define USER_CNT_cmMotor 19

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_cmMotor] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION cmMotor::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= cmBase::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= cmBase::ClassSvr.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, cmBase::ClassSvr.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_cmMotor;
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #Background();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[3]		:= #execHmiCmd1();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[4]		:= #execHmiCmd2();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[8]		:= #interlock();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[9]		:= #work();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[11]		:= #execStop();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[12]		:= #Init1();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[17]		:= #preScanOverride();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[18]		:= #postScanOverride();

#pragma warning (default : 74)
	cmBase::ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF cmBase::ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	stsStateRun.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF stsStateRun.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parTimeOutTime.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parTimeOutTime.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parStartingTime.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parStartingTime.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parMinTimeBetweenRev.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parMinTimeBetweenRev.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parSpeed.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parSpeed.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
// JdK 13-12-2019 updated calculation of speed, added alarm for speed in out of borders
// JdK 17-5-2019 class motor, created for library icm project 4284 TraffiRoad 
// goal is to control motor
// Alarm errornrs:
//                  1: thermicall failure
//                  2: controller failure
//                  3: time-out feedback
//                  4: feedback gone during running
//                  5: speed in out of borders

// HMI cmd1: start run FWD, cmd2: start run Bwd, stop: stop running

FUNCTION VIRTUAL cmMotor::execHmiCmd1

  //start running FWD
  tmpOldSpeed:= parSpeed;  
  StartFwd();
  tmpStartedHMI:=1; //rembember who started the motor
  tmpStartedCS:=0;

END_FUNCTION


FUNCTION VIRTUAL cmMotor::execHmiCmd2

  //start running REV
  tmpOldSpeed:= parSpeed;   
  StartBwd();
  tmpStartedHMI:=1;//remember who started this
  tmpStartedCS:=0;

END_FUNCTION


FUNCTION GLOBAL cmMotor::csStartFwd
	VAR_INPUT
		speed 	: DINT;
	END_VAR
  
  //start command from above, only if in auto or service
  IF pmlCom.sts.mode= auto | pmlCom.sts.mode= service THEN
    tmpOldSpeed:= parSpeed;
    parSpeed:=speed;
    StartFwd();
  END_IF;
  tmpStartedHMI:=0; //rembember who started the motor
  tmpStartedCS:=1;  
  
END_FUNCTION


FUNCTION GLOBAL cmMotor::csStartBwd
	VAR_INPUT
		speed 	: DINT;
	END_VAR

  //start command from above, only if in auto or service
  IF pmlCom.sts.mode= auto | pmlCom.sts.mode= service THEN
    tmpOldSpeed:= parSpeed;  
    parSpeed:=speed;
    StartBwd();
  END_IF;
  tmpStartedHMI:=0; //rembember who started the motor
  tmpStartedCS:=1;  

END_FUNCTION


FUNCTION GLOBAL cmMotor::csStop

  //start command from above, only if in auto or service, or during resetting
  IF pmlCom.sts.mode= auto | pmlCom.sts.mode= service THEN
    StopRunning();
  END_IF;
  
END_FUNCTION


FUNCTION cmMotor::StartFwd

  IF stsStateRun = moOff | (stsBwd = 1) THEN //only allowed to start if  
    stsFwd:=1;
    stsBwd:=0;
    stsStateRun:= moChangeDir;
  ELSIF parSpeed<> tmpOldSpeed & feedbackConnected THEN //JdK 22-4-2022, if speed is changing and feedback is used, change to wait for feedback again
    stsStateRun:= moWaitFeedback;
  END_IF;
  updateSpeed(speed:=parSpeed);


END_FUNCTION


FUNCTION cmMotor::StartBwd

  IF stsStateRun = moOff | (stsBwd = 1) THEN //only allowed to start if  
    stsFwd:=0;
    stsBwd:=1;
    stsStateRun:= moChangeDir;
  ELSIF parSpeed<> tmpOldSpeed & feedbackConnected THEN //JdK 22-4-2022, if speed is changing and feedback is used, change to wait for feedback again
    stsStateRun:= moWaitFeedback;    
  END_IF;
  updateSpeed(speed:=parSpeed);
  
END_FUNCTION


FUNCTION cmMotor::StopRunning

  stsStateRun:= moOff;

END_FUNCTION


FUNCTION GLOBAL cmMotor::updateSpeed
	VAR_INPUT
		speed 	: DINT;
	END_VAR

  parSpeed:=speed;
  IF parSpeed > sMaxSpeedIn | parSpeed < sMinSpeedIn THEN
    giveAlarm(errorNr:=5);
  ELSIF sMaxSpeedIn-sMinSpeedIn<>0 THEN
    tmpOSpeed:=((to_real(parSpeed-sMinSpeedIn)/to_real(sMaxSpeedIn-sMinSpeedIn)))*to_real(sMaxSpeedOut-sMinSpeedOut)+to_real(sMinSpeedOut);
    oSpeed:=to_dint(tmpOSpeed);
  ELSE
    oSpeed:=0;
  END_IF;
  oSpeed.Write(input:=oSpeed);
  
END_FUNCTION


FUNCTION VIRTUAL cmMotor::work

  IF pmlCom.sts.isInterlocked & stsStateRun<>moOff THEN //at interlock, always stop motor
    stsStateRun:=moOff;
  END_IF;

  CASE stsStateRun OF
  
    moOff: //just do nothing, 
    
    moChangeDir: //wait until change direction is allowed
      IF (timerFwdStopped.done=1 | stsFwd=1) & (timerBwdStopped.done=1 | stsBwd=1) THEN
        IF tmpHWAlarm = 0 THEN
          stsStateRun:=moWaitFeedback;
        ELSE
          giveAlarm(errorNr:=2);
          stsStateRun:=moOff;
        END_IF;
      END_IF;
    
    moWaitFeedback: //wait for feedback, only if not in simu and if feedback is connected
      IF pmlCom.cmd.simulation=allSimu | feedbackConnected=0 | tmpFeedback THEN
        stsStateRun:=moStarting;
      ELSIF timerFeedback.done THEN
        giveAlarm(errorNr:=3);
        stsStateRun:=moOff;
      END_IF;
      oFwd:=stsFwd;
      oBwd:=stsBwd;
    
    moStarting: //wait certain time, until motor is running fast and stable enough
      IF pmlCom.cmd.simulation<>allSimu & feedbackConnected=1 & tmpFeedback=0 THEN
        giveAlarm(errorNr:=4); //feedback gone during running
        stsStateRun:=moOff;
      ELSIF tmpHWAlarm THEN
        giveAlarm(errorNr:=2); //hardware not ok
        stsStateRun:=moOff;
      ELSIF timerStarting.done THEN
        stsStateRun:=moRunning;
      END_IF;
      oFwd:=stsFwd;
      oBwd:=stsBwd;
    
    moRunning: //run untill method stop is called
      IF pmlCom.cmd.simulation<>allSimu & feedbackConnected=1 & tmpFeedback=0 THEN
        giveAlarm(errorNr:=4); //feedback gone during running
        stsStateRun:=moOff;
      ELSIF tmpHWAlarm THEN
        giveAlarm(errorNr:=2); //hardware not ok
        stsStateRun:=moOff;
      END_IF;
      oFwd:=stsFwd;
      oBwd:=stsBwd;  
  
  END_CASE;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL cmMotor::Background
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;
	END_VAR
  
  //read in slow inputs
  sInvertThermFailure := sInvertThermFailure.Read();
  sInvertHWAlarm := sInvertHWAlarm.Read();
  sInvertFeedback := sInvertFeedback.Read();
  sMinSpeedOut := sMinSpeedOut.Read();
  sMaxSpeedOut := sMaxSpeedOut.Read();
  sMinSpeedIn := sMinSpeedIn.Read();
  sMaxSpeedIn := sMaxSpeedIn.Read();
  
  state:=1;

END_FUNCTION


FUNCTION VIRTUAL cmMotor::interlock

  pmlCom.sts.isInterlocked:=pmlCom.cmd.interlock | tmpThermFailure=1;

END_FUNCTION


FUNCTION VIRTUAL cmMotor::execStop

  //stop running
  StopRunning();

END_FUNCTION


FUNCTION VIRTUAL cmMotor::Init1

  IF initDone = 0 THEN
    feedbackConnected:=IsClientConnected(#iFeedback);
    initDone:=1;
  END_IF;
END_FUNCTION


FUNCTION VIRTUAL cmMotor::preScanOverride
  //first read inputs
  iThermFailure := iThermFailure.Read();
  iHWAlarm := iHWAlarm.Read();
  iFeedback := iFeedback.Read();
  
  tmpThermFailure:=(iThermFailure=1 & sInvertThermFailure=0) | (iThermFailure=0 & sInvertThermFailure=1);
  tmpHWAlarm:=(iHWAlarm=1 & sInvertHWAlarm=0) | (iHWAlarm=0 & sInvertHWAlarm=1 & pmlCom.cmd.simulation<>allSimu);
  tmpFeedback:=(iFeedback=1 & sInvertFeedback=0) | (iFeedback=0 & sInvertFeedback=1);
  
  //give alarm if there is a thermical failure
  IF tmpThermFailure THEN
    giveAlarm(errorNr:=1);
  END_IF;
  

  
  //run timers
  timerFeedback:=runTimer(Active:=stsStateRun=moWaitFeedback, iMem:=timerFeedback, TimerTime:=parTimeOutTime, Pause:=0);
  timerFwdStopped:=runTimer(Active:=oFwd=0, iMem:=timerFwdStopped, TimerTime:=parMinTimeBetweenRev, Pause:=0);
  timerBwdStopped:=runTimer(Active:=oBwd=0, iMem:=timerBwdStopped, TimerTime:=parMinTimeBetweenRev, Pause:=0);
  timerStarting:=runTimer(Active:=stsStateRun=moStarting, iMem:=timerStarting, TimerTime:=parStartingTime, Pause:=0);


  //set outputs to 0
  oFwd:=0;
  oBwd:=0;

  IF tmpStartedHMI=1 & pmlCom.sts.mode<> manual & pmlCom.sts.mode<> service & stsStateRun<>moOff THEN //started in manual, not manual anymore and still running
    StopRunning(); //stop it
  ELSIF tmpStartedCS=1 & pmlCom.sts.mode<> halfAuto & pmlCom.sts.mode<> auto & pmlCom.sts.mode<> service & stsStateRun<> moOff THEN //started from above in auto/half auto, and not in same mode and still running
    StopRunning(); //stop it
  END_IF;

END_FUNCTION


FUNCTION VIRTUAL cmMotor::postScanOverride

  oFwd.Write(input:=oFwd);
  oBwd.Write(input:=oBwd);

END_FUNCTION