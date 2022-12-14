//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "logger"
	Revision           = "0.0"
	GUID               = "{653A7979-EBB7-4F64-95DD-3EF36494AE1F}"
	RealtimeTask       = "true"
	DefRealtime        = "5 ms"
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
		<Server Name="close" GUID="{92DF1EEB-23D1-4636-A261-6230E9B69B1A}" Visualized="false" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="open" GUID="{6541E308-89F1-41C2-A5C7-345927BD23F9}" Visualized="false" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="writeLine" GUID="{95EA4A1B-E427-4A0E-8FD3-E5EA7222D5A9}" Visualized="false" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Client Name="fileBase" Required="true" Internal="false"/>
		<Client Name="fileSys" Required="false" Internal="false"/>
		<Client Name="minValue" Required="true" Internal="false"/>
		<Client Name="value1" Required="true" Internal="false"/>
		<Client Name="value2" Required="true" Internal="false"/>
		<Client Name="value3" Required="true" Internal="false"/>
	</Channels>
</Class>
*)
logger : CLASS
  //Servers:
	open 	: SvrChCmd_DINT;
	writeLine 	: SvrCh_DINT;
	close 	: SvrCh_DINT;
  //Clients:
	fileSys 	: CltChCmd__FileSys;
	fileBase 	: CltChCmd_FileBase;
	minValue 	: CltCh_DINT;
	value1 	: CltCh_DINT;
	value2 	: CltCh_DINT;
	value3 	: CltCh_DINT;
  //Variables:
		handle 	: DINT;
		string : ARRAY [0..100] OF CHAR;

		len 	: DINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL RtWork
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT := READY;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL open::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL writeLine::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL close::Write
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

#pragma usingLtd _FileSys
#pragma usingLtd FileBase


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB logger::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_LOGGER
0$UINT, 0$UINT, (SIZEOF(::logger))$UINT, 
3$UINT, 6$UINT, 0$UINT, 
TO_UDINT(1753666677), "logger", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::logger.open.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(2464509456), "open", 
(::logger.writeLine.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4150519686), "writeLine", 
(::logger.close.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3830793076), "close", 
//Clients:
(::logger.fileSys.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000000$UINT, TO_UDINT(1422438244), "fileSys", TO_UDINT(545279513), "_FileSys", 1$UINT, 20$UINT, 
(::logger.fileBase.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1689253198), "fileBase", TO_UDINT(1689253198), "FileBase", 0$UINT, 5$UINT, 
(::logger.minValue.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(528105082), "minValue", 
(::logger.value1.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(1776519956), "value1", 
(::logger.value2.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(4041923246), "value2", 
(::logger.value3.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(2280516152), "value3", 
END_FUNCTION


#define USER_CNT_logger 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_logger] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION logger::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_logger, pCmd := #vmt.CmdTable);
	vmt.CmdTable.Write		:= #Write();
	vmt.CmdTable.RtWork		:= #RtWork();
	open.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF open.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	writeLine.pMeth			:= StoreMethod( #M_RD_DIRECT(), #writeLine::Write() );
	IF writeLine.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	close.pMeth			:= StoreMethod( #M_RD_DIRECT(), #close::Write() );
	IF close.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL logger::open::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	open := input;
  
  handle:=fileSys.FileOpen(filename:="c:\file.csv", attributes:=ATT_CREATE);
  close:=0;
  
	result := open;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL logger::writeLine::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	writeLine := input;
  IF handle > 0 THEN
    writeline:= fileSys.FileWrite(handle:=handle, buffer:=#string[0], length:=_strlen(src:=#string[0]));
  
  END_IF;
	result := writeLine;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL logger::close::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	close := input;
  IF handle > 0 THEN
    fileSys.FileClose(handle:=handle);
  END_IF;
	result := close;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL logger::RtWork
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;(* := READY *)
	END_VAR


  minValue:=minValue.Read();
  
  IF handle> 0 & close= 0 & minValue>=23 & minValue<= 27 THEN
    value1 := value1.Read();
    value2 := value2.Read();
    value3 := value3.Read();
    
    
    _memset(dest:=#string[0], usByte:=0, cntr:=sizeof(string));
    
    fileBase.BuildValue2Ascii(Value:=value1, Dest:=#string[0], Offset:=0);
    len:=to_dint(_strlen(src:=#string[0]));
    string[len]:=';';
    fileBase.BuildValue2Ascii(Value:=value2, Dest:=#string[len+1], Offset:=0);
    len:=to_dint(_strlen(src:=#string[0]));
    string[len]:=';';
    fileBase.BuildValue2Ascii(Value:=value3, Dest:=#string[len+1], Offset:=0);
    len:=to_dint(_strlen(src:=#string[0]));
    string[len]:=13;

    fileSys.FileWrite(handle:=handle, buffer:=#string[0], length:=_strlen(src:=#string[0]));
  
  END_IF;

END_FUNCTION
