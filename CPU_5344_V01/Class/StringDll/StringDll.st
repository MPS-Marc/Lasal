//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "StringDll"
	Revision           = "0.0"
	GUID               = "{D51DDF41-C28A-4023-AD14-1495720E17A9}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(284,120)">
	<Channels>
		<Server Name="Handle" GUID="{2A8ED710-C3EA-45FF-9ADF-11A76C2FF039}" Visualized="false" Initialize="false" WriteProtected="false" Retentive="false"/>
	</Channels>
	<Network Name="StringDll">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{6A3702C2-D2B1-48F6-AB3B-FAAD5A8DEC9D}"
				Class      = "String"
				Position   = "(218,120)"
				Visualized = "false">
				<Channels>
					<Server Name="Data"/>
					<Client Name="SingleRealloc" Value="1"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.Data" Destination="_base.Data" Vertices="(1156,210),(984,210),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using String

StringDll : CLASS
: String
  //Servers:
	Handle 	: SvrCh_DINT;
  //Clients:
  //Variables:
		strTemp : ARRAY [0..255] OF DINT;

  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Handle::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Handle::Write
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

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB StringDll::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_STRINGDLL
0$UINT, 0$UINT, (SIZEOF(::StringDll))$UINT, 
1$UINT, 0$UINT, 0$UINT, 
TO_UDINT(1435670809), "StringDll", //Class
TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, //Baseclass
//Servers:
(::StringDll.Handle.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1635313503), "Handle", 
//Clients:
END_FUNCTION


#define USER_CNT_StringDll 52

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_StringDll] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION StringDll::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= String::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= VirtualBaseInit::Data.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, VirtualBaseInit::Data.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_StringDll;
	VirtualBaseInit::Data.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF VirtualBaseInit::Data.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Handle.pMeth			:= StoreMethod( #Handle::Read(), #Handle::Write() );
	IF Handle.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL StringDll::Handle::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  Handle := (#strTemp[0])$dint;
	output := Handle;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL StringDll::Handle::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	Handle := input;
  WriteDataOff(udLen:=255, udOff:=0, pData:=#strTemp[0]$usint);
 	result := Handle;

END_FUNCTION