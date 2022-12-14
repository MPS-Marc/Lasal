//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "EditString"
	Revision           = "0.0"
	GUID               = "{AACC888C-66A8-489D-B4F1-7DE63EDDA2B3}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(300,120)">
	<Channels>
		<Server Name="NewData" GUID="{F411B8B4-486F-46D9-9150-B6FF018F02AE}" Visualized="false" Initialize="false" WriteProtected="false" Retentive="false"/>
	</Channels>
	<Network Name="EditString">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{F7A97E93-E2E6-4D87-8777-9D5F82287F0F}"
				Class      = "StringDll"
				Position   = "(241,120)"
				Visualized = "false">
				<Channels>
					<Server Name="Data"/>
					<Server Name="Handle"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.Data" Destination="_base.Data" Vertices="(713,210),(541,210),"/>
			<Connection Source="this.Handle" Destination="_base.Handle" Vertices="(713,270),(541,270),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using StringDll

EditString : CLASS
: StringDll
  //Servers:
	NewData 	: SvrCh_DINT;
  //Clients:
  //Variables:
  //Functions:
				//! <Function Comment=" The function doesn&apos;t provide default functionality&#13;&#10; Please overwrite it for derived classes.&#13;&#10; Die Funktion stellt keine Standard-Implementierung dar. Sie mu? f?r abgeleitete&#13;&#10; Klassen ?berschrieben werden.&#13;&#10;[&gt;udOff] Offset innerhalb des internen Datenpuffers, auf den die Daten kopiert werden sollen&#13;&#10;" Name="WriteDataOff"/>
	FUNCTION VIRTUAL GLOBAL WriteDataOff
		VAR_INPUT
			udLen 	: UDINT;			//! <Variable Comment="length of initialization data in bytes" Name="WriteDataOff.udLen"/>
			udOff 	: UDINT;			//! <Variable Comment=" offset where data should be copied to" Name="WriteDataOff.udOff"/>
			pData 	: ^USINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB EditString::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_EDITSTRING
0$UINT, 0$UINT, (SIZEOF(::EditString))$UINT, 
1$UINT, 0$UINT, 0$UINT, 
TO_UDINT(648754807), "EditString", //Class
TO_UDINT(1435670809), "StringDll", 0$UINT, 0$UINT, //Baseclass
//Servers:
(::EditString.NewData.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3873216661), "NewData", 
//Clients:
END_FUNCTION


#define USER_CNT_EditString 52

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_EditString] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION EditString::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= StringDll::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= VirtualBaseInit::Data.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, VirtualBaseInit::Data.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_EditString;
#pragma warning (disable : 74)
	vmt.UserFcts[3]		:= #WriteDataOff();

#pragma warning (default : 74)
	VirtualBaseInit::Data.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF VirtualBaseInit::Data.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	NewData.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF NewData.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL EditString::WriteDataOff
	VAR_INPUT
		udLen 	: UDINT;
		udOff 	: UDINT;
		pData 	: ^USINT;
	END_VAR
  
  StringDll::WriteDataOff(udLen, udOff, pData);
  NewData += 1;
  
END_FUNCTION


