//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "MillPlane"
	Revision           = "0.0"
	GUID               = "{C2E0BCA0-9956-42CD-A91A-C10432333665}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(390,360)">
	<Channels>
		<Server Name="amount" GUID="{193642A7-4C28-4CFD-A2E2-0DE4C7D5E221}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="ClassSvr" GUID="{E6DAA9BA-B8B1-4D09-B9DB-2859E32D6273}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="depth" GUID="{EA0E1655-4BE1-45EF-8A9E-B999102A344E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="feedRate" GUID="{1A08361C-D4FC-47B7-9662-F1854AEEBFE1}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="firsIdx" GUID="{5E90C53D-8926-4784-A470-3D04C61EF777}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="lowerRate" GUID="{1D84810A-C79D-48C8-86A5-6D6B0BBBD074}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="rnr" GUID="{8530471B-EFC4-48E6-8004-5BDE1F812F9B}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Client Name="line1" Required="true" Internal="true"/>
		<Client Name="line2" Required="true" Internal="true"/>
		<Client Name="line3" Required="true" Internal="true"/>
		<Client Name="line4" Required="true" Internal="true"/>
		<Client Name="line5" Required="true" Internal="true"/>
		<Client Name="line6" Required="true" Internal="true"/>
	</Channels>
	<Network Name="MillPlane">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "line1"
				GUID       = "{652AA7B5-965D-4B3C-A58C-3355AE80B50C}"
				Class      = "MillLine"
				Position   = "(150,120)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Server Name="middleX"/>
					<Server Name="middleY"/>
					<Server Name="millType"/>
					<Server Name="radius"/>
					<Server Name="rnr"/>
					<Server Name="xGoal"/>
					<Server Name="yGoal"/>
				</Channels>
			</Object>
			<Object
				Name       = "line2"
				GUID       = "{36D5948D-1327-4A31-9B05-1D2B1C14D37D}"
				Class      = "MillLine"
				Position   = "(150,690)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Server Name="middleX"/>
					<Server Name="middleY"/>
					<Server Name="millType"/>
					<Server Name="radius"/>
					<Server Name="rnr"/>
					<Server Name="xGoal"/>
					<Server Name="yGoal"/>
				</Channels>
			</Object>
			<Object
				Name       = "line3"
				GUID       = "{470181E2-4CB2-49AF-840A-8095A658271F}"
				Class      = "MillLine"
				Position   = "(720,120)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Server Name="middleX"/>
					<Server Name="middleY"/>
					<Server Name="millType"/>
					<Server Name="radius"/>
					<Server Name="rnr"/>
					<Server Name="xGoal"/>
					<Server Name="yGoal"/>
				</Channels>
			</Object>
			<Object
				Name       = "line4"
				GUID       = "{F3CF1664-EDA0-484A-839A-60D835B5650C}"
				Class      = "MillLine"
				Position   = "(720,690)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Server Name="middleX"/>
					<Server Name="middleY"/>
					<Server Name="millType"/>
					<Server Name="radius"/>
					<Server Name="rnr"/>
					<Server Name="xGoal"/>
					<Server Name="yGoal"/>
				</Channels>
			</Object>
			<Object
				Name       = "line5"
				GUID       = "{F7100BEA-D270-40BC-9C8D-DECEE2E7EDC7}"
				Class      = "MillLine"
				Position   = "(1260,120)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Server Name="middleX"/>
					<Server Name="middleY"/>
					<Server Name="millType"/>
					<Server Name="radius"/>
					<Server Name="rnr"/>
					<Server Name="xGoal"/>
					<Server Name="yGoal"/>
				</Channels>
			</Object>
			<Object
				Name       = "line6"
				GUID       = "{70D79079-5006-445F-A4D8-D64A95C12FC9}"
				Class      = "MillLine"
				Position   = "(1260,690)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Server Name="middleX"/>
					<Server Name="middleY"/>
					<Server Name="millType"/>
					<Server Name="radius"/>
					<Server Name="rnr"/>
					<Server Name="xGoal"/>
					<Server Name="yGoal"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.line1" Destination="line1.ClassSvr"/>
			<Connection Source="this.line2" Destination="line2.ClassSvr"/>
			<Connection Source="this.line4" Destination="line4.ClassSvr"/>
			<Connection Source="this.line3" Destination="line3.ClassSvr"/>
			<Connection Source="this.line5" Destination="line5.ClassSvr"/>
			<Connection Source="this.line6" Destination="line6.ClassSvr"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
MillPlane : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	rnr 	: SvrCh_DINT;
	depth 	: SvrCh_DINT;
	amount 	: SvrCh_DINT;
	feedRate 	: SvrCh_DINT;
	lowerRate 	: SvrCh_DINT;
	firsIdx 	: SvrCh_DINT;
  //Clients:
	line1 	: CltChCmd_MillLine;
	line2 	: CltChCmd_MillLine;
	line3 	: CltChCmd_MillLine;
	line4 	: CltChCmd_MillLine;
	line5 	: CltChCmd_MillLine;
	line6 	: CltChCmd_MillLine;
  //Variables:
		ptr 	: ^strMillPlane;
  //Functions:
	
	FUNCTION GLOBAL WritePtr
		VAR_INPUT
			iPtr 	: ^strMillPlane;
		END_VAR;
	
	FUNCTION WriteServers;
	
	FUNCTION VIRTUAL GLOBAL depth::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL amount::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL feedRate::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL lowerRate::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL firsIdx::Write
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

#pragma using MillLine


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB MillPlane::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_MILLPLANE
0$UINT, 0$UINT, (SIZEOF(::MillPlane))$UINT, 
7$UINT, 6$UINT, 0$UINT, 
TO_UDINT(4109558799), "MillPlane", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::MillPlane.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::MillPlane.rnr.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2078699935), "rnr", 
(::MillPlane.depth.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(234348249), "depth", 
(::MillPlane.amount.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2119808964), "amount", 
(::MillPlane.feedRate.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2788697626), "feedRate", 
(::MillPlane.lowerRate.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(488368416), "lowerRate", 
(::MillPlane.firsIdx.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2271550966), "firsIdx", 
//Clients:
(::MillPlane.line1.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(468274770), "line1", TO_UDINT(628474366), "MillLine", 0$UINT, 0$UINT, 
(::MillPlane.line2.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2195726312), "line2", TO_UDINT(628474366), "MillLine", 0$UINT, 0$UINT, 
(::MillPlane.line3.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(4125568894), "line3", TO_UDINT(628474366), "MillLine", 0$UINT, 0$UINT, 
(::MillPlane.line4.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1803795165), "line4", TO_UDINT(628474366), "MillLine", 0$UINT, 0$UINT, 
(::MillPlane.line5.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(478448203), "line5", TO_UDINT(628474366), "MillLine", 0$UINT, 0$UINT, 
(::MillPlane.line6.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(2240666609), "line6", TO_UDINT(628474366), "MillLine", 0$UINT, 0$UINT, 
END_FUNCTION


#define USER_CNT_MillPlane 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_MillPlane] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION MillPlane::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_MillPlane, pCmd := #vmt.CmdTable);
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	rnr.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF rnr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	depth.pMeth			:= StoreMethod( #M_RD_DIRECT(), #depth::Write() );
	IF depth.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	amount.pMeth			:= StoreMethod( #M_RD_DIRECT(), #amount::Write() );
	IF amount.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	feedRate.pMeth			:= StoreMethod( #M_RD_DIRECT(), #feedRate::Write() );
	IF feedRate.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	lowerRate.pMeth			:= StoreMethod( #M_RD_DIRECT(), #lowerRate::Write() );
	IF lowerRate.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	firsIdx.pMeth			:= StoreMethod( #M_RD_DIRECT(), #firsIdx::Write() );
	IF firsIdx.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL MillPlane::depth::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if ptr <> NIL then
    depth := input;
    ptr^.depth := depth;
    result := depth;
  else
    result := ACCESS_DENIED;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL MillPlane::amount::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  
  if ptr <> NIL then
    amount := input;
    ptr^.amount := amount;
    result := amount;
  else
    result := ACCESS_DENIED;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL MillPlane::feedRate::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if ptr <> NIL then
    feedRate := input;
    ptr^.feedRate := feedRate;
    result := feedRate;
  else
    result := ACCESS_DENIED;
  end_if;

END_FUNCTION


FUNCTION GLOBAL MillPlane::WritePtr
	VAR_INPUT
		iPtr 	: ^strMillPlane;
	END_VAR

  ptr := iPtr;
  WriteServers();
  firsIdx.Write(input:=0);


END_FUNCTION


FUNCTION MillPlane::WriteServers

  if ptr <> NIL then
    depth := ptr^.depth;
    amount := ptr^.amount;
    feedRate := ptr^.feedRate;
    lowerRate := ptr^.lowerRate;
  end_if;
  

END_FUNCTION


FUNCTION VIRTUAL GLOBAL MillPlane::lowerRate::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

  if ptr <> NIL then
	  lowerRate := input;
    ptr^.lowerRate := lowerRate;
	  result := lowerRate;
  else
    result := ACCESS_DENIED;
  end_if;
  

END_FUNCTION


FUNCTION VIRTUAL GLOBAL MillPlane::firsIdx::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	firsIdx := input;
  if firsIdx >= 0 & firsIdx <= (cMaxMillLinesInPlane-2) & ptr<>NIL then
    line1.WritePtr(iPtr:=#ptr^.lines[firsIdx]);
    line2.WritePtr(iPtr:=#ptr^.lines[firsIdx+1]);
//    line3.WritePtr(iPtr:=#ptr^.lines[firsIdx+2]);
//    line4.WritePtr(iPtr:=#ptr^.lines[firsIdx+3]);
//    line5.WritePtr(iPtr:=#ptr^.lines[firsIdx+4]);
//    line6.WritePtr(iPtr:=#ptr^.lines[firsIdx+5]);
    line1.rnr.Write(input:=firsIdx+1);
    line2.rnr.Write(input:=firsIdx+2);
//    line3.rnr.Write(input:=firsIdx+3);
//    line4.rnr.Write(input:=firsIdx+4);
//    line5.rnr.Write(input:=firsIdx+5);
//    line6.rnr.Write(input:=firsIdx+6);
  else
    result:=ACCESS_DENIED;
    firsIdx-=1;    
  end_if;
	result := firsIdx;

END_FUNCTION