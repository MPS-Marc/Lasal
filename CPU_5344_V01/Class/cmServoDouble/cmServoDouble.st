//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "cmServoDouble"
	Revision           = "1.0"
	GUID               = "{9CD5D3BF-E398-48A2-B4DD-02B9598CC359}"
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
	Objectsize         = "(510,2760)">
	<Channels>
		<Server Name="parMaxAcc" WriteProtected="false">
		</Server>
		<Server Name="parMaxDifferenceDuringMovement" GUID="{2F23E029-7500-4244-8A7B-2C10F1DA58E8}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="File"/>
		<Server Name="parMaxPos" WriteProtected="false">
		</Server>
		<Server Name="parMaxSpeed" WriteProtected="false">
		</Server>
		<Server Name="parMinPos" WriteProtected="false">
		</Server>
		<Server Name="parRefPosSlave" GUID="{DD8BE050-07B6-4572-8C23-B76EB44D34CD}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="File"/>
		<Server Name="stsActRealPos2" GUID="{D28A3152-8733-4E01-8674-3A25A18A425A}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="encoderOk" Required="true" Internal="false"/>
		<Client Name="lmcCtrlSlave" Required="true" Internal="false"/>
	</Channels>
	<Network Name="cmServoDouble">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{60A2A525-27FA-4207-835C-A6A4B7B4DD4A}"
				Class      = "cmServo"
				Position   = "(218,120)"
				Visualized = "true">
				<Channels>
					<Server Name="calcReqSpeed"/>
					<Server Name="ClassSvr"/>
					<Server Name="cmdHMI"/>
					<Server Name="csPowerOffServo"/>
					<Server Name="ErrorNr"/>
					<Server Name="firstPos"/>
					<Server Name="mode"/>
					<Server Name="parExtraIFactor" Value="0"/>
					<Server Name="parHomeAgain"/>
					<Server Name="parIFactor" Value="0"/>
					<Server Name="parInPosBand" Value="100"/>
					<Server Name="parJogTime" Value="500"/>
					<Server Name="parKeepControllerOn"/>
					<Server Name="parLastPieceBand" Value="1000"/>
					<Server Name="parManualSpeed" Value="500"/>
					<Server Name="parMaxAcc" Value="10000"/>
					<Server Name="parMaxDec" Value="10000"/>
					<Server Name="parMaxPos" Value="1500000"/>
					<Server Name="parMaxSpeed" Value="10000"/>
					<Server Name="parMinPos" Value="0"/>
					<Server Name="parNoRefSwitch"/>
					<Server Name="parOverrideSimulateServo"/>
					<Server Name="parRefDirPositive" Value="1"/>
					<Server Name="parRefPos" Value="1500000"/>
					<Server Name="parRefSpeed" Value="1000"/>
					<Server Name="parTimeBrakeOff" Value="200"/>
					<Server Name="parTimeBrakeOn" Value="200"/>
					<Server Name="parTimeControllerOn" Value="100"/>
					<Server Name="parTimeOutTime" Value="120000"/>
					<Server Name="parWaitInPosTime" Value="100"/>
					<Server Name="PendelOn"/>
					<Server Name="reqAcc"/>
					<Server Name="reqDec"/>
					<Server Name="reqPos"/>
					<Server Name="reqSpeed"/>
					<Server Name="secondPos"/>
					<Server Name="state"/>
					<Server Name="stsActRealPos"/>
					<Server Name="stsAllSimuActive"/>
					<Server Name="stsControllerIsOn"/>
					<Server Name="stsHMI_RunsAllowed"/>
					<Server Name="stsInAlarm"/>
					<Server Name="stsInPos"/>
					<Server Name="stsIsHomed"/>
					<Server Name="stsIsInterlocked"/>
					<Server Name="stsPos"/>
					<Server Name="stsSimRef"/>
					<Server Name="stsSpeed"/>
					<Server Name="stsState"/>
					<Client Name="ctrlLiftingCil"/>
					<Client Name="id"/>
					<Client Name="iEmergencyStop"/>
					<Client Name="iHWReady"/>
					<Client Name="iPmSpeed" Value="1000"/>
					<Client Name="iReleaseMovement"/>
					<Client Name="lmcCtrl"/>
					<Client Name="nwEmOrUnit"/>
					<Client Name="oBrake"/>
					<Client Name="oIFactor"/>
					<Client Name="oResetHW"/>
					<Client Name="oSimRefSwitch"/>
					<Client Name="sExtraForMinMaxPos"/>
					<Client Name="sNoHoming"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.ClassSvr" Destination="_base.ClassSvr" Vertices="(976,210),(804,210),"/>
			<Connection Source="this.state" Destination="_base.state" Vertices="(976,270),(804,270),"/>
			<Connection Source="this.mode" Destination="_base.mode" Vertices="(976,330),(804,330),"/>
			<Connection Source="this.cmdHMI" Destination="_base.cmdHMI" Vertices="(976,390),(804,390),"/>
			<Connection Source="this.stsInAlarm" Destination="_base.stsInAlarm" Vertices="(976,450),(804,450),"/>
			<Connection Source="this.stsIsInterlocked" Destination="_base.stsIsInterlocked" Vertices="(976,510),(804,510),"/>
			<Connection Source="this.stsHMI_RunsAllowed" Destination="_base.stsHMI_RunsAllowed" Vertices="(976,570),(804,570),"/>
			<Connection Source="this.ErrorNr" Destination="_base.ErrorNr" Vertices="(976,630),(804,630),"/>
			<Connection Source="this.stsState" Destination="_base.stsState" Vertices="(976,690),(804,690),"/>
			<Connection Source="this.stsIsHomed" Destination="_base.stsIsHomed" Vertices="(976,750),(804,750),"/>
			<Connection Source="this.stsInPos" Destination="_base.stsInPos" Vertices="(976,810),(804,810),"/>
			<Connection Source="this.stsControllerIsOn" Destination="_base.stsControllerIsOn" Vertices="(976,870),(804,870),"/>
			<Connection Source="this.stsPos" Destination="_base.stsPos" Vertices="(976,930),(804,930),"/>
			<Connection Source="this.stsActRealPos" Destination="_base.stsActRealPos" Vertices="(976,990),(804,990),"/>
			<Connection Source="this.stsSpeed" Destination="_base.stsSpeed" Vertices="(976,1050),(804,1050),"/>
			<Connection Source="this.parMinPos" Destination="_base.parMinPos" Vertices="(976,1110),(804,1350),"/>
			<Connection Source="this.parMaxPos" Destination="_base.parMaxPos" Vertices="(976,1170),(804,1410),"/>
			<Connection Source="this.parMaxSpeed" Destination="_base.parMaxSpeed" Vertices="(976,1230),(804,1470),"/>
			<Connection Source="this.parMaxAcc" Destination="_base.parMaxAcc" Vertices="(976,1290),(804,1530),"/>
			<Connection Source="this.parMaxDec" Destination="_base.parMaxDec" Vertices="(976,1350),(804,1590),"/>
			<Connection Source="this.parRefSpeed" Destination="_base.parRefSpeed" Vertices="(976,1410),(804,1650),"/>
			<Connection Source="this.parRefPos" Destination="_base.parRefPos" Vertices="(976,1470),(804,1710),"/>
			<Connection Source="this.parRefDirPositive" Destination="_base.parRefDirPositive" Vertices="(976,1530),(804,1770),"/>
			<Connection Source="this.parNoRefSwitch" Destination="_base.parNoRefSwitch" Vertices="(976,1590),(804,1830),"/>
			<Connection Source="this.parIFactor" Destination="_base.parIFactor" Vertices="(976,1650),(804,1890),"/>
			<Connection Source="this.parExtraIFactor" Destination="_base.parExtraIFactor" Vertices="(976,1710),(804,1950),"/>
			<Connection Source="this.parInPosBand" Destination="_base.parInPosBand" Vertices="(976,1770),(804,2010),"/>
			<Connection Source="this.parLastPieceBand" Destination="_base.parLastPieceBand" Vertices="(976,1830),(804,2070),"/>
			<Connection Source="this.parTimeControllerOn" Destination="_base.parTimeControllerOn" Vertices="(976,1890),(804,2130),"/>
			<Connection Source="this.parTimeOutTime" Destination="_base.parTimeOutTime" Vertices="(976,1950),(804,2190),"/>
			<Connection Source="this.parWaitInPosTime" Destination="_base.parWaitInPosTime" Vertices="(976,2010),(804,2250),"/>
			<Connection Source="this.parTimeBrakeOn" Destination="_base.parTimeBrakeOn" Vertices="(976,2070),(804,2310),"/>
			<Connection Source="this.parTimeBrakeOff" Destination="_base.parTimeBrakeOff" Vertices="(976,2130),(804,2370),"/>
			<Connection Source="this.parJogTime" Destination="_base.parJogTime" Vertices="(976,2190),(804,2430),"/>
			<Connection Source="this.parKeepControllerOn" Destination="_base.parKeepControllerOn" Vertices="(976,2250),(804,2490),"/>
			<Connection Source="this.parManualSpeed" Destination="_base.parManualSpeed" Vertices="(976,2310),(804,2550),"/>
			<Connection Source="this.reqPos" Destination="_base.reqPos" Vertices="(976,2430),(804,2790),"/>
			<Connection Source="this.reqSpeed" Destination="_base.reqSpeed" Vertices="(976,2490),(804,2850),"/>
			<Connection Source="this.reqAcc" Destination="_base.reqAcc" Vertices="(976,2550),(804,2910),"/>
			<Connection Source="this.reqDec" Destination="_base.reqDec" Vertices="(976,2610),(804,2970),"/>
			<Connection Source="this.PendelOn" Destination="_base.PendelOn" Vertices="(976,2670),(804,3150),"/>
			<Connection Source="this.firstPos" Destination="_base.firstPos" Vertices="(976,2730),(804,3210),"/>
			<Connection Source="this.secondPos" Destination="_base.secondPos" Vertices="(976,2790),(804,3270),"/>
			<Connection Source="_base.nwEmOrUnit" Destination="this.nwEmOrUnit" Vertices="(218,210),(38,210),"/>
			<Connection Source="_base.id" Destination="this.id" Vertices="(218,270),(38,270),"/>
			<Connection Source="_base.lmcCtrl" Destination="this.lmcCtrl" Vertices="(218,330),(38,330),"/>
			<Connection Source="_base.oIFactor" Destination="this.oIFactor" Vertices="(218,450),(38,390),"/>
			<Connection Source="_base.oBrake" Destination="this.oBrake" Vertices="(218,510),(38,450),"/>
			<Connection Source="_base.oSimRefSwitch" Destination="this.oSimRefSwitch" Vertices="(218,570),(38,510),"/>
			<Connection Source="_base.oResetHW" Destination="this.oResetHW" Vertices="(218,630),(38,570),"/>
			<Connection Source="_base.iHWReady" Destination="this.iHWReady" Vertices="(218,690),(38,630),"/>
			<Connection Source="_base.iEmergencyStop" Destination="this.iEmergencyStop" Vertices="(218,750),(38,690),"/>
			<Connection Source="_base.sNoHoming" Destination="this.sNoHoming" Vertices="(218,930),(38,810),"/>
			<Connection Source="_base.iReleaseMovement" Destination="this.iReleaseMovement" Vertices="(218,810),(38,750),"/>
			<Connection Source="_base.sExtraForMinMaxPos" Destination="this.sExtraForMinMaxPos" Vertices="(218,990),(38,870),"/>
			<Connection Source="this.parHomeAgain" Destination="_base.parHomeAgain" Vertices="(976,2370),(804,2610),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using cmServo

cmServoDouble : CLASS
: cmServo
  //Servers:
	parRefPosSlave 	: SvrCh_DINT;
	parMaxDifferenceDuringMovement 	: SvrCh_DINT;
	stsActRealPos2 	: SvrCh_DINT;
  //Clients:
	lmcCtrlSlave 	: CltChCmd__LMCAxis;
	encoderOk 	: CltCh_DINT;
  //Variables:
		tmpDistanceOk 	: DINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Background
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL resetAlarm;
	
	FUNCTION VIRTUAL work;
	
	FUNCTION VIRTUAL Init1;
	
	FUNCTION VIRTUAL preScanOverride;
	
	FUNCTION VIRTUAL postScanOverride;
	
	FUNCTION VIRTUAL GLOBAL checkInPos
		VAR_INPUT
			checkPos 	: DINT;
		END_VAR
		VAR_OUTPUT
			ok 	: DINT;
		END_VAR;
	
	FUNCTION checkDistance;
	
	FUNCTION VIRTUAL GLOBAL parMinPos::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL parMaxPos::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL parMaxSpeed::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL parMaxAcc::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma usingLtd _LMCAxis


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB cmServoDouble::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CMSERVODOUBLE
1$UINT, 0$UINT, (SIZEOF(::cmServoDouble))$UINT, 
3$UINT, 2$UINT, 0$UINT, 
TO_UDINT(3728963795), "cmServoDouble", //Class
TO_UDINT(3985303601), "cmServo", 1$UINT, 0$UINT, //Baseclass
//Servers:
(::cmServoDouble.parRefPosSlave.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(3944979136), "parRefPosSlave", 
(::cmServoDouble.parMaxDifferenceDuringMovement.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(882721615), "parMaxDifferenceDuringMovement", 
(::cmServoDouble.stsActRealPos2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4098846912), "stsActRealPos2", 
//Clients:
(::cmServoDouble.lmcCtrlSlave.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3912294022), "lmcCtrlSlave", TO_UDINT(1422175863), "_LMCAxis", 1$UINT, 98$UINT, 
(::cmServoDouble.encoderOk.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(1033384686), "encoderOk", 
END_FUNCTION


#define USER_CNT_cmServoDouble 20

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_cmServoDouble] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION cmServoDouble::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= cmServo::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= cmBase::ClassSvr.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, cmBase::ClassSvr.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_cmServoDouble;
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #Background();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[7]		:= #resetAlarm();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[9]		:= #work();

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
#pragma warning (disable : 74)
	vmt.UserFcts[19]		:= #checkInPos();

#pragma warning (default : 74)
	cmBase::ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF cmBase::ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parMinPos.pMeth			:= StoreMethod( #M_RD_DIRECT(), #parMinPos::Write() );
	IF parMinPos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parMaxPos.pMeth			:= StoreMethod( #M_RD_DIRECT(), #parMaxPos::Write() );
	IF parMaxPos.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parMaxSpeed.pMeth			:= StoreMethod( #M_RD_DIRECT(), #parMaxSpeed::Write() );
	IF parMaxSpeed.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parMaxAcc.pMeth			:= StoreMethod( #M_RD_DIRECT(), #parMaxAcc::Write() );
	IF parMaxAcc.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parRefPosSlave.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parRefPosSlave.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parMaxDifferenceDuringMovement.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parMaxDifferenceDuringMovement.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
// JdK 3-7-2019: servo double created for Traffiroad/standard lib
// it is a servo system with two servo's who always have to go to the same position

// errornr 13: distance between axes to big

FUNCTION VIRTUAL cmServoDouble::work

  //stsState control
  IF stsState<>seStop & stsState<>seWaitReset & stsState<>seIdle & (pmlCom.sts.isInterlocked=1 | pmlCom.sts.inAlarm=1 | iEmergencyStop=1) THEN
    stsState:=seStop; //if interlock or alarm, stop movement
  END_IF;
  
  CASE stsState OF
  
    seStop: //stop movement
      IF lmcCtrl.ActVelocity < 50 & lmcCtrl.ActVelocity > -50 & lmcCtrlSlave.ActVelocity < 50 & lmcCtrlSlave.ActVelocity > -50 THEN //wait until moving stopped
        stsState:=seWaitReset;
      ELSE
        lmcCtrl.StopMove(Decel:=3*parMaxDec); //sStop movement as fast as possible
        lmcCtrlSlave.StopMove(Decel:=3*parMaxDec);
      END_IF;
    
    seWaitReset: //wait until problem is solved
      IF pmlCom.sts.inAlarm=0 & pmlCom.sts.isInterlocked=0 THEN //no problem active, make starting again possible
        stsState:=seIdle;
      END_IF;
    
    seIdle: //ready for new action
      
    
    seWaitStartMoveRef: //wait until controller on/brake released
      IF stsControllerIsOn=1 & timerBrakeOff.done=1 THEN
        stsState:=seStartMoveRef;
      END_IF;
    
    seStartMoveRef: //give ref command
      tmpRefMode:= _LMCAXIS_REFMODE.NoZImpulse; //we don't use the Z pulse of the encoder
      IF parRefDirPositive THEN //IF DIRECTION IS POSITIVE, TELL IT TO THE CONTROLLER
        tmpRefMode += _LMCAXIS_REFMODE.RefDirection;
      END_IF;
      IF parNoRefSwitch THEN
        tmpRefMode += _LMCAXIS_REFMODE.ESEqualRef; //no refswitch means use endswitch for homing
      END_IF;
      
      lmcCtrl.Override.Write(input:=1000);//override at max
      lmcCtrlSlave.Override.Write(input:=1000);
      lmcCtrl.MoveReference(Mode:=tmpRefMode, 
                   Position:=ParRefPos, 
                      VRef1:=ParRefSpeed, 
                      VRef2:=(ParRefSpeed/5), //reverse direction of homing with 1/5 of normal homing speed
                      Accel:=ParMaxAcc, //use normal acc
             PositionWindow:=ParInPosBand);      
      lmcCtrlSlave.MoveReference(Mode:=tmpRefMode, 
                   Position:=parRefPosSlave, 
                      VRef1:=ParRefSpeed, 
                      VRef2:=(ParRefSpeed/5), //reverse direction of homing with 1/5 of normal homing speed
                      Accel:=ParMaxAcc, //use normal acc
             PositionWindow:=ParInPosBand);               
      stsState:=seMoveRef;
    
    seMoveRef: //wait until ref is done
      IF lmcCtrl.AxisStatus.IsReferenced=1 & lmcCtrlSlave.AxisStatus.IsReferenced=1 THEN 
        stsState:=seIdle;
      END_IF;
    
    seWaitStartMove: //wait until controller on/brake released
      IF stsControllerIsOn=1 & timerBrakeOff.done=1 THEN
        lmcCtrlSlave.CoupleGearAbsolute(MaxVel:=parMaxSpeed, 
                                        MaxAcc:=parMaxAcc, 
                                      DeltaPos:=0, 
                                       pMaster:=lmcCtrl.ReadMasterInfo(usDelay:=0), 
                                       GearMul:=1, 
                                       GearDiv:=1);//, 
                                       //MaxJerk:=);
                                       
        stsState:=seWaitCoupling; // seStartMove;
        oIFactor:=parIFactor;
        checkDistance();
      END_IF;
    
    seWaitCoupling:
      IF lmcCtrlSlave.Control = LOCKED_LMCAXIS THEN
        stsState:=seStartMove;
        checkDistance();
      END_IF;
    
    seStartMove: //give move command
      IF reqAcc = 0 THEN
        tmpAcc:=ParMaxAcc;//no Acc given, use the max
      ELSE
        tmpAcc:= (reqAcc * parMaxAcc)/1000; //ReqAcc is a percentage of the maximum
      END_IF;
      IF reqDec = 0 THEN
        tmpDec:=parMaxDec;//no Acc given, use the max
      ELSE
        tmpDec:= (reqDec * parMaxDec)/1000; //ReqAcc is a percentage of the maximum
      END_IF;    
      
      IF pmlCom.sts.mode=manual THEN
        tmpSpeed:= parManualSpeed; //in manual move with half the speed
      ELSE
        if reqSpeed = 0 then
          tmpSpeed:=1000;
        else
          tmpSpeed := reqSpeed;
        end_if;
      END_IF;
      
      lmcCtrl.Override.Write(input:=tmpSpeed); //required speed is in 1/10%, even as the override, in this way we control the speed
      lmcCtrl.MoveAbsolute(Position:=ReqPos, 
                         Speed:=parMaxSpeed, 
                         Accel:=tmpAcc, 
                         Decel:=tmpDec); 
      tmpOldReqSpeed:=tmpSpeed;    
      reqSpeed:=tmpSpeed;
      stsState:=seMove;
      checkDistance();
    
    seMove: //wait until movement is nearly done
      IF (lmcCtrl.Destination <> reqPos | tmpOldReqSpeed <> reqSpeed) THEN //start again if req pos or speed changed
        stsState:= seStartMove;
      ELSIF stsInPos=1 then
        stsState := seWaitInPos;
      ELSIF lmcCtrl.InPosition(Mode:=LMCAXIS_POSITIONWINDOW_INT_UNITS, PositionWindow:=parLastPieceBand) =1 THEN
        stsState:= seMoveLastPiece;
      END_IF;
      checkDistance();
    
    seMoveLastPiece: //wait until movement is done
      oIFactor:=parExtraIFactor;
      IF ((lmcCtrl.Destination <> reqPos) | tmpOldReqSpeed <> reqSpeed) THEN //start again if req pos or speed changed
        stsState:= seStartMove;
      ELSIF stsInPos =1 THEN
        stsState:= seWaitInPos;
      END_IF;  
      checkDistance();
    
    seWaitInPos:
      IF (lmcCtrl.Destination <> reqPos | tmpOldReqSpeed <> reqSpeed) THEN //start again if req pos or speed changed
        stsState:= seStartMove;
      ELSIF timerWaitInPos.done=1 THEN
        If stsInPos=1 THEN //action done
          stsState:=seIdle;
        ELSE //start action again
          stsState:=seWaitStartMove;
        END_IF;
      END_IF;
      checkDistance();
      
    seWaitStartJogPos:
      IF stsControllerIsOn=1 & timerBrakeOff.done=1 THEN
        stsState:=seStartJogPos;
      END_IF;
    
    seStartJogPos:
      lmcCtrl.Override.Write(input:=100); //jog at 10% of speed
      lmcCtrl.MoveEndless(Speed:=parMaxSpeed, Accel:=parMaxAcc);  
      lmcCtrlSlave.Override.Write(input:=100); //jog at 10% of speed
      lmcCtrlSlave.MoveEndless(Speed:=parMaxSpeed, Accel:=parMaxAcc);        
      stsState:=seJogPos;
    
    seJogPos:
      IF timerJog.done=1 THEN
        stsState:=seStop;
      END_IF;
    
    seWaitStartJogNeg:
      IF stsControllerIsOn=1 & timerBrakeOff.done=1 THEN
        stsState:=seStartJogNeg;
      END_IF;
      
    seStartJogNeg:
      lmcCtrl.Override.Write(input:=100); //jog at 10% of speed
      lmcCtrl.MoveEndless(Speed:=parMaxSpeed*-1, Accel:=parMaxAcc);  
      lmcCtrlSlave.Override.Write(input:=100); //jog at 10% of speed
      lmcCtrlSlave.MoveEndless(Speed:=parMaxSpeed*-1, Accel:=parMaxAcc);        
      stsState:=seJogNeg;    
    
    seJogNeg:
      IF timerJog.done=1 THEN
        stsState:=seStop;
      END_IF;  
  
  END_CASE;
  

  //depending on state, power lmc axis
  IF stsState=seWaitStartMoveRef | stsState=seWaitStartMove | stsState=seWaitStartJogNeg | stsState=seWaitStartJogPos THEN
    lmcCtrl.PowerOn(Mode:=LMCAXIS_MOVE_ANY_WAY);
    lmcCtrlSlave.PowerOn(Mode:=LMCAXIS_MOVE_ANY_WAY);
  END_IF;
  
  //depending on state and some mor, power off lmc axis
  IF stsControllerIsOn=1 & (stsState=seWaitReset | ((stsState=seIdle | stsState=seWaitInPos) & timerBrakeOn.done=1 & parKeepControllerOn=0)) THEN
    lmcCtrl.PowerOff(Mode:=LMCAXIS_IMMEDIATE_STOPP);
    lmcCtrlSlave.PowerOff(Mode:=LMCAXIS_IMMEDIATE_STOPP);
  END_IF;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL cmServoDouble::checkInPos
	VAR_INPUT
		checkPos 	: DINT;
	END_VAR
	VAR_OUTPUT
		ok 	: DINT;
	END_VAR

  //real positions should be in 1/1000 of mm, means resolution in LMC is 100
  ok := stsActRealPos< ((checkPos *100)+parInPosBand) & stsActRealPos> ((checkPos *100)-parInPosBand) &
        stsActRealPos2< ((checkPos *100)+parInPosBand) & stsActRealPos2> ((checkPos *100)-parInPosBand);

END_FUNCTION


FUNCTION VIRTUAL GLOBAL cmServoDouble::Background
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;
	END_VAR
  
  lmcCtrl.SWMinPos.Write(input:=parMinPos-20); //keep some distance because we don't want alarms if there is some overshoot
  lmcCtrl.SWMaxPos.Write(input:=parMaxPos+20);

  lmcCtrlSlave.SWMinPos.Write(input:=parMinPos-20); //keep some distance because we don't want alarms if there is some overshoot
  lmcCtrlSlave.SWMaxPos.Write(input:=parMaxPos+20);

  state:= 0;

END_FUNCTION


FUNCTION VIRTUAL cmServoDouble::resetAlarm
  
  _Alarm.AlarmActief.Write(input:=0);
  _Alarm.ErrorNr.Write(input:=0);
  IF (stsState= seWaitReset | stsState=seIdle) & (lmcCtrl.AxisError<>0 |lmcCtrlSlave.AxisError<>0) THEN
    oResetHW.Write(input:=1);
    lmcCtrl.QuitError();
    lmcCtrlSlave.QuitError();
  END_IF;
  
END_FUNCTION


FUNCTION VIRTUAL cmServoDouble::Init1

  IF initDone=0 THEN
    //write minpos, maxpos, speed and acc
    lmcCtrl.SWMinPos.Write(input:=parMinPos-20); //keep some distance because we don't want alarms if there is some overshoot
    lmcCtrl.SWMaxPos.Write(input:=parMaxPos+20);
    lmcCtrl.VMax.Write(input:=parMaxSpeed);
    lmcCtrl.AMax.Write(input:=parMaxAcc);
    lmcCtrl.Resolution.Write(input:=1000);
    lmcCtrlSlave.SWMinPos.Write(input:=parMinPos-20); //keep some distance because we don't want alarms if there is some overshoot
    lmcCtrlSlave.SWMaxPos.Write(input:=parMaxPos+20);
    lmcCtrlSlave.VMax.Write(input:=parMaxSpeed);
    lmcCtrlSlave.AMax.Write(input:=parMaxAcc);
    lmcCtrlSlave.Resolution.Write(input:=1000);    
    IF parManualSpeed=0 THEN
      parManualSpeed:=100; //set speed at 10%
    END_IF;
    initDone:=1;
  END_IF;
  
END_FUNCTION


FUNCTION VIRTUAL GLOBAL cmServoDouble::parMinPos::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	parMinPos := input;
  lmcCtrl.SWMinPos.Write(input:=parMinPos-20); //keep some distance because we don't want alarms if there is some overshoot
  lmcCtrlSlave.SWMinPos.Write(input:=parMinPos-20); //keep some distance because we don't want alarms if there is some overshoot

	result := parMinPos;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL cmServoDouble::parMaxPos::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	parMaxPos := input;
  lmcCtrl.SWMaxPos.Write(input:=parMaxPos+20);
  lmcCtrlSlave.SWMaxPos.Write(input:=parMaxPos+20);
	result := parMaxPos;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL cmServoDouble::parMaxSpeed::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	parMaxSpeed := input;
  lmcCtrl.VMax.Write(input:=parMaxSpeed);
  lmcCtrlSlave.VMax.Write(input:=parMaxSpeed);
	result := parMaxSpeed;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL cmServoDouble::parMaxAcc::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	parMaxAcc := input;
  lmcCtrl.AMax.Write(input:=parMaxAcc);    
  lmcCtrlSlave.AMax.Write(input:=parMaxAcc);    
	result := parMaxAcc;

END_FUNCTION


FUNCTION cmServoDouble::checkDistance

  //function to check if both axes are close enough to each other, problem with some absolute encoders is they give 0 until they moved a bit, so then this check doesn't work
  encoderOk:=encoderOk.Read();
  IF parMaxDifferenceDuringMovement> 0 & ABS(stsActRealPos-stsActRealPos2)>parMaxDifferenceDuringMovement & tmpDistanceOk=1 & encoderOk=1 THEN
    giveAlarm(errorNr:=13);
    IF _Alarm.errorNr= 13 THEN   //if alarm is active
      tmpDistanceOk:= 0;
    END_IF;
  ELSE
    tmpDistanceOk:=1;
  END_IF;

END_FUNCTION


FUNCTION VIRTUAL cmServoDouble::preScanOverride

  //if servo hardware is frequency controller or something, we may have a ready signal
  iHWReady:=iHWReady.Read();
  iEmergencyStop:=iEmergencyStop.Read();
  
  //get position in calculation value of lmc, normally this is in 1/1000mm
  stsActRealPos:=lmcCtrl.ReadPosition(Mode:=LMCAXIS_ACTPOS_INTUNIT);
  stsActRealPos2:=lmcCtrlSlave.ReadPosition(Mode:=LMCAXIS_ACTPOS_INTUNIT);
  //calculate in pos state, reqpos is in 1/10 mm, act real pos in 1/1000
  stsInPos:= ABS(stsActRealPos-(reqPos*100))< parInPosBand & ABS(stsActRealPos2-(reqPos*100))< parInPosBand;
  
  IF stsIsHomed=0 THEN //don't give real value if we are not homed yet
    stsPos:=NOREFVALUE;
  ELSIF stsInPos=1 THEN
    stsPos:=reqPos;
  ELSE
    stsPos:=(stsActRealPos+50)/100; //go from 1/1000ste to 1/10, the 50 is because dividing doesn't round
  END_IF;
  stsSpeed:=lmcCtrl.ActVelocity.Read();
  

  //call timers
  timerTimeOut:=runTimer(Active:=stsState=seMove, iMem:=timerTimeOut, TimerTime:=parTimeOutTime, Pause:=0);
  timerJog:=runTimer(Active:=(stsState=seJogNeg|stsState=seJogPos)&jogSet=0, iMem:=timerJog, TimerTime:=parJogTime, Pause:=0);
  jogSet:=0; //set it to zero every cycle, if button is pressed, it is ma de 1
  timerControllerOn:=runTimer(Active:=(lmcCtrl.AxisStatus.PowerOn & lmcCtrlSlave.AxisStatus.PowerOn), iMem:=timerControllerOn, TimerTime:=parTimeControllerOn, Pause:=0);
  timerWaitInPos:=runTimer(Active:=stsState=seWaitInPos, iMem:=timerWaitInPos, TimerTime:=parWaitInPosTime, Pause:=0);
  timerBrakeOn:=runTimer(Active:=oBrake=1, iMem:=timerBrakeOn, TimerTime:=parTimeBrakeOn, Pause:=0);
  timerBrakeOff:=runTimer(Active:=oBrake=0, iMem:=timerBrakeOff, TimerTime:=parTimeBrakeOff, Pause:=0);
  timerSimRef:=runTimer(Active:=stsState=seMoveRef, iMem:=timerSimRef, TimerTime:=10, Pause:=0);
  
  //homed status
  stsIsHomed:=lmcCtrl.AxisStatus.IsReferenced & lmcCtrlSlave.AxisStatus.IsReferenced;
  
  //controller on status
  stsControllerIsOn:=timerControllerOn.done;
  

  //set alarms
  IF timerTimeOut.done THEN
    giveAlarm(errorNr:=1);
  END_IF;
  //nr 2 is given if reqpos is out of reach
  IF iHWReady= 0 & stsState<>seWaitReset & stsState<>seIdle & stsState<>seStop & pmlCom.cmd.simulation<>allSimu THEN
    giveAlarm(errorNr:=3);
  END_IF;
  IF (lmcCtrl.AxisError<>0 | lmcCtrlSlave.AxisError<>0) & stsState<>seWaitReset & stsState<>seIdle & stsState<>seStop THEN //error in drive, and not stopped
    IF lmcCtrl.AxisError.HwError | lmcCtrlSlave.AxisError.HwError  THEN
      giveAlarm(errorNr:=4);
    ELSIF lmcCtrl.AxisError.SwMinError | lmcCtrlSlave.AxisError.SwMinError  THEN
      IF stsState=seMove & reqPos < stsPos THEN //only if moving negative
        giveAlarm(errorNr:=5);
      END_IF;
    ELSIF lmcCtrl.AxisError.SwMaxError | lmcCtrlSlave.AxisError.SwMaxError THEN
      IF stsState=seMove & reqPos > stsPos THEN //only if moving positive
        giveAlarm(errorNr:=6);
      END_IF;
    ELSIF lmcCtrl.AxisError.HwMinError | lmcCtrlSlave.AxisError.HwMinError THEN
      IF stsState=seMove & reqPos < stsPos THEN //only if moving negative
        giveAlarm(errorNr:=7);
      END_IF;
    ELSIF lmcCtrl.AxisError.HwMaxError | lmcCtrlSlave.AxisError.HwMaxError THEN
      IF stsState=seMove & reqPos > stsPos THEN //only if moving positive
        giveAlarm(errorNr:=8);
      END_IF;
    ELSIF lmcCtrl.AxisError.ReferenceError | lmcCtrlSlave.AxisError.ReferenceError THEN
      giveAlarm(errorNr:=9);
    ELSIF lmcCtrl.AxisError.ContouringError | lmcCtrlSlave.AxisError.ContouringError THEN
      giveAlarm(errorNr:=10);
    ELSE
      giveAlarm(errorNr:=11); //general alarm, one of the other alarms is active in the controller
    END_IF;
  END_IF;
  IF iEmergencyStop=1 & stsState<>seWaitReset & stsState<>seIdle & stsState<>seStop THEN
    giveAlarm(errorNr:=12);
  END_IF;
    
  IF PendelOn=1 & stsIsHomed=1 THEN
    Pendel();
  END_IF;


END_FUNCTION


FUNCTION VIRTUAL cmServoDouble::postScanOverride

  oBrake:= stsState=seWaitReset | ((stsState=seIdle | stsState=seWaitInPos) & (parKeepControllerOn=0 | stsControllerIsOn=0)); //brake on if reset, or if in idle/wait and not keep controller on, or controller is of
  oBrake.Write(input:=oBrake);

  oIFactor.Write(input:=oIFactor);
  oSimRefSwitch:=pmlCom.cmd.simulation=allSimu & stsState=seMoveRef & timerSimRef.done=0;
  oSimRefSwitch.Write(input:=oSimRefSwitch);
  
  IF pmlCom.cmd.simulation=allSimu & lmcCtrl.SimulateMode<>1 THEN
    lmcCtrl.SimulateMode.Write(input:=1);
  ELSIF pmlCom.cmd.simulation<>allSimu & lmcCtrl.SimulateMode<>0 THEN
    lmcCtrl.SimulateMode.Write(input:=0);
  END_IF;
  
  IF pmlCom.cmd.simulation=allSimu & lmcCtrlSlave.SimulateMode<>1 THEN
    lmcCtrlSlave.SimulateMode.Write(input:=1);
  ELSIF pmlCom.cmd.simulation<>allSimu & lmcCtrlSlave.SimulateMode<>0 THEN
    lmcCtrlSlave.SimulateMode.Write(input:=0);
  END_IF;  
  

END_FUNCTION