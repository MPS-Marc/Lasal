//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "cmBlower"
	Revision           = "0.0"
	GUID               = "{48FA0760-9408-4F38-ACE4-3A8924492C4F}"
	RealtimeTask       = "false"
	CyclicTask         = "true"
	DefCyclictime      = "10 ms"
	BackgroundTask     = "true"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(450,1080)">
	<Channels>
		<Server Name="cmdBlow" GUID="{0A5A894B-68DF-4CBE-A8A6-D8AC11728432}" Visualized="false" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="parAmountOfBlows" GUID="{D549739E-D473-4DC2-BE02-41D3451AA3D6}" Visualized="true" Initialize="true" DefValue="3" WriteProtected="false" Retentive="File"/>
		<Server Name="parTimeBlowOff" GUID="{008D940D-CD7D-49CF-A62E-754062681737}" Visualized="true" Initialize="true" DefValue="500" WriteProtected="false" Retentive="File"/>
		<Server Name="parTimeBlowOn" GUID="{88AADE71-6A93-453D-9D76-260E259C0E42}" Visualized="true" Initialize="true" DefValue="1000" WriteProtected="false" Retentive="File"/>
		<Server Name="stprBlow" GUID="{D7E90381-63D5-4E63-B611-E65C78AC4CEE}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="stsCounter" GUID="{C176ED12-4F41-4E1D-B702-B725A3D6FA49}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="oBlowValve" Required="false" Internal="false"/>
	</Channels>
	<Separators>
		<Servers>
			<SepChn Position="0"/>
			<SepChn Position="3"/>
			<SepChn Position="5"/>
		</Servers>
	</Separators>
	<Network Name="cmBlower">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{6C68FE45-1DA3-4A5D-88DC-BC5A423D42C0}"
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
			<Connection Source="this.stsHMI_RunsAllowed" Destination="_base.stsHMI_RunsAllowed" Vertices="(1036,570),(864,630),"/>
			<Connection Source="this.ErrorNr" Destination="_base.ErrorNr" Vertices="(1036,630),(864,690),"/>
			<Connection Source="_base.nwEmOrUnit" Destination="this.nwEmOrUnit" Vertices="(218,210),(38,210),"/>
			<Connection Source="_base.id" Destination="this.id" Vertices="(218,270),(38,270),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using cmBase

cmBlower : CLASS
: cmBase
  //Servers:
	stprBlow 	: SvrCh_DINT;
	stsCounter 	: SvrCh_DINT;
	cmdBlow 	: SvrCh_DINT;
	parTimeBlowOn 	: SvrCh_UDINT;
	parTimeBlowOff 	: SvrCh_UDINT;
	parAmountOfBlows 	: SvrCh_DINT;
  //Clients:
	oBlowValve 	: CltCh_DINT;
  //Variables:
		timerBlowOn 	: strTimer;
		timerBlowOf 	: strTimer;
  //Functions:
	
	FUNCTION VIRTUAL work;
	
	FUNCTION VIRTUAL execStart;
	
	FUNCTION VIRTUAL execStop;
	
	FUNCTION VIRTUAL preScanOverride;
	
	FUNCTION VIRTUAL postScanOverride;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB cmBlower::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CMBLOWER
0$UINT, 0$UINT, (SIZEOF(::cmBlower))$UINT, 
6$UINT, 1$UINT, 0$UINT, 
TO_UDINT(2593188663), "cmBlower", //Class
TO_UDINT(1325959504), "cmBase", 1$UINT, 0$UINT, //Baseclass
//Servers:
(::cmBlower.stprBlow.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3980329275), "stprBlow", 
(::cmBlower.stsCounter.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(649397374), "stsCounter", 
(::cmBlower.cmdBlow.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1011426350), "cmdBlow", 
(::cmBlower.parTimeBlowOn.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(2015207721), "parTimeBlowOn", 
(::cmBlower.parTimeBlowOff.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(3350070509), "parTimeBlowOff", 
(::cmBlower.parAmountOfBlows.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000011000$UINT, TO_UDINT(1712084549), "parAmountOfBlows", 
//Clients:
(::cmBlower.oBlowValve.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2794048509), "oBlowValve", 
END_FUNCTION


#define USER_CNT_cmBlower 19

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_cmBlower] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION cmBlower::@STD
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
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_cmBlower;
#pragma warning (disable : 74)
	vmt.UserFcts[9]		:= #work();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[10]		:= #execStart();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[11]		:= #execStop();

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
	cmdBlow.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF cmdBlow.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parTimeBlowOn.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parTimeBlowOn.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parTimeBlowOff.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parTimeBlowOff.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	parAmountOfBlows.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF parAmountOfBlows.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
// JdK 5-6-2019: cmBlower created for 4284/Traffiroad / standard MPS library
// function is to start blowing in pulses or not

FUNCTION VIRTUAL cmBlower::work

  
  CASE stprBlow OF
  
  0: //rest
  
  1: //set blower on
    oBlowValve:=1;
    IF timerBlowOn.done THEN
      stprBlow+=1;
    END_IF;
    
  2: //set blower off
    IF timerBlowOf.done THEN
      stsCounter+=1;
      stprBlow+=1;
    END_IF;
    
  3: //check if we should do it again, or we are done
    IF stsCounter < parAmountOfBlows THEN
      stprBlow:=1;
    ELSE
      stsCounter:= 0;
      stprBlow:=0;
    END_IF;
    
    
  END_CASE;


END_FUNCTION


FUNCTION VIRTUAL cmBlower::execStart

  stprBlow:=1; //start blowing cycle
  
END_FUNCTION


FUNCTION VIRTUAL cmBlower::execStop

  stprBlow:=0; //stop blowing

END_FUNCTION


FUNCTION VIRTUAL cmBlower::preScanOverride

  oBlowValve:=0; //set it to 0 every cycle, if we need it to one, it is written to 1 after prescan

  IF pmlCom.sts.isInterlocked THEN
    stprBlow:=0; //at interlock, stop with blowing
  END_IF;
  
  //start blowing if there is a command to blow
  IF cmdBlow= 1 & (pmlCom.sts.mode= auto | pmlCom.sts.mode= service) & stprBlow=0 THEN
    cmdBlow:= 0; //do command only once
    stsCounter:= 0;
    stprBlow:=1;
  END_IF;
  
  //run timers
  timerBlowOn:=runTimer(Active:=stprBlow=1, iMem:=timerBlowOn, TimerTime:=parTimeBlowOn, Pause:=FALSE);
  timerBlowOf:=runTimer(Active:=stprBlow=2, iMem:=timerBlowOf, TimerTime:=parTimeBlowOff, Pause:=FALSE);

END_FUNCTION


FUNCTION VIRTUAL cmBlower::postScanOverride

  oBlowValve.Write(input:=oBlowValve);


END_FUNCTION
