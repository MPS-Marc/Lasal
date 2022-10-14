//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "_DriveMotorPara"
	Revision           = "1.4"
	GUID               = "{A4E778A9-6522-4889-AB83-3666DEB4C505}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	IconPath           = ".\Class\_DriveMngBase\Drive.ico"
	SharedCommandTable = "true"
	Objectsize         = "(438,120)"
	Comment            = "displays the motor parameter of the connected Drive&#13;&#10;&#13;&#10;If the feedback device is able to store data (multiturn add-on, Endat encoder), &#13;&#10;the motor parameter is stored in the feedback device with [K-FBRW]. &#13;&#10;At start-up of the drive the motor parameters are reloaded automatically.">
	<Channels>
		<Server Name="M_BRAKE" GUID="{0F8FA5CA-02CA-4477-9366-12A6B9B3BCF8}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 018&#13;&#10;Unit  : [-]&#13;&#10;Description : Control of the holding brake in the motor. &#13;&#10;Before the first enable of a motor of the drive, &#13;&#10;every M-BRAKE must have the right value. Otherwise this could cause a BRAKE_ERROR.&#13;&#10;&#13;&#10;0 = motor without holding brake&#13;&#10;1 = motor with holding brake&#13;&#10;&#13;&#10;The drive handles the holding brake control:&#13;&#10;After enabling the drive the holding brake is released &#13;&#10;and the input of the speed controller is set to 0 rpm for the time [M-BREN]. &#13;&#10;After this time the motor starts turning.&#13;&#10;After disabling the drive the motor is ramped down with the stop ramp [G-EMRAMP]. &#13;&#10;When reaching 3% of [V-NMAX] or after 1 s the holding brake is applied &#13;&#10;and the input of the speed controller is set to 0 rpm for the time [M-BRDIS]. &#13;&#10;After this time the power stage is disabled."/>
		<Server Name="M_BRDIS" GUID="{AD68C13B-6DF7-471C-9A10-628E7078106B}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 022&#13;&#10;Unit  : [ms]&#13;&#10;Description : This object is used for motors with holding brake only ([M-BRAKE]=1).&#13;&#10;After disabling the drive the motor is ramped down with the stop ramp [G-EMRAMP]. &#13;&#10;When reaching 3% of [V-NMAX] or after 1 s the holding brake is applied &#13;&#10;and the input of the speed controller is set to 0 rpm for the time [M-BRDIS]. &#13;&#10;After this time the power stage is disabled. See also [M-BRAKE]."/>
		<Server Name="M_BREN" GUID="{B5CB592F-7C9B-47B3-86F7-ECEB46384296}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 023&#13;&#10;Unit  : [ms]&#13;&#10;Description : This object is used for motors with holding brake only ([M-BRAKE]=1).&#13;&#10;After enabling the drive the holding brake is released &#13;&#10;and the input of the speed controller is set to 0 rpm for the time [M-BREN]. &#13;&#10;After this time the motor starts turning. See also [M-BRAKE]."/>
		<Server Name="M_IFWEAK" GUID="{03C93AF8-BB18-45CF-8A9B-7543067C04B5}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 021&#13;&#10;Unit  : [mA]&#13;&#10;Description : From 90 to 100% of the current controller output voltage the drive makes a field weakening. &#13;&#10;At   90% the [I-ID]-Setpoint is 0 mA&#13;&#10;At 100% the [I-ID]-Setpoint is - M-IFWEAK mA&#13;&#10;The drive limits M-IFWEAK to [M-INULL]/4 internally."/>
		<Server Name="M_IMAG" GUID="{BA442086-8C8F-4887-96C0-978E1B3D2E35}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 026&#13;&#10;Unit  : [mA]&#13;&#10;Description: Magnetic flux reference current Induction  motor"/>
		<Server Name="M_INULL" GUID="{0A6C509F-B7E0-414E-8266-8F9758F6F630}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 004&#13;&#10;Unit  : [mA]&#13;&#10;Description : Stall current of the motor (rms).&#13;&#10;See [C-ICONT] and [C-KPNULL].&#13;"/>
		<Server Name="M_IPEAK" GUID="{449D2A90-C54A-40D9-BF4F-5BB5AE26AAB6}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 005&#13;&#10;Unit  : [mA]&#13;&#10;Description : Maximum peak current of the motor (rms).&#13;&#10;See [C-IPEAK], [C-IPEAKN] and [C-KPPEAK].&#13;"/>
		<Server Name="M_J" GUID="{2AC97648-DDA1-4156-84B1-F051E7AFFF8B}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 011&#13;&#10;Unit  : [g cm�]&#13;&#10;Description : Inertia of the motor.&#13;&#10;This object has effect on the Resolver observer current feed forward. &#13;&#10;See [F-FF]."/>
		<Server Name="M_KN" GUID="{BFA29265-A0B0-49E0-AE06-21848BA27BE4}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 019&#13;&#10;Unit  : [RPM/V]&#13;&#10;Description : Speedconstant of the motor."/>
		<Server Name="M_L" GUID="{DDA840C5-3A79-4186-9053-24F747E6CC4E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 009&#13;&#10;Unit  : [�H]&#13;&#10;Description : Inductance of the motor winding (phase-phase)."/>
		<Server Name="M_NAME1" GUID="{B9C0B910-BBBE-4B63-894D-0A706B174A56}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 001&#13;&#10;Unit  : [-]&#13;&#10;Description : First 4 characters of the Name of the motor (has no effect for motor control).&#13;&#10;&#13;&#10;"/>
		<Server Name="M_NAME2" GUID="{C8A0149D-B9B3-4951-9EF4-7BB90AA43CD9}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 002&#13;&#10;Unit  : [-]&#13;&#10;Description : Middle 4 characters of the Name of the motor (has no effect for motor control).&#13;&#10;"/>
		<Server Name="M_NAME3" GUID="{7771CE88-37E0-494F-825E-303A3B9C9B50}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 003&#13;&#10;Unit  : [-]&#13;&#10;Description : Last 4 characters of the Name of the motor (has no effect for motor control).&#13;&#10;"/>
		<Server Name="M_NMAX" GUID="{B457D26D-7C8D-4FEE-B49E-E3513407222E}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 006&#13;&#10;Unit  : [rpm]&#13;&#10;Description : Maximum mechanical speed of the motor.&#13;&#10;The speed set point of the speed controller is limited &#13;&#10;to the minimum of [V-NMAX] and M-NMAX."/>
		<Server Name="M_POL" GUID="{15C97D91-0057-43C6-88AC-C96880E9C9CB}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 007&#13;&#10;Unit  : [-]&#13;&#10;Description : Number of motor poles."/>
		<Server Name="M_R" GUID="{3E90078D-D8C6-4A41-B403-14DF2E2AC5F8}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 010&#13;&#10;Unit  : [mOhm]&#13;&#10;Description : Resistance of the motor winding (phase-phase)."/>
		<Server Name="M_ROFF" GUID="{787BF812-5367-4F27-B3B7-7201E00C5722}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 014&#13;&#10;Unit  : [�]&#13;&#10;Description : Feedback offset in degrees for the commutation of the motor."/>
		<Server Name="M_RPOL" GUID="{9A26A01A-A746-4519-B4B7-2240143EC5B4}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 013&#13;&#10;Unit  : [-]&#13;&#10;Description : Number of poles of the feedback system."/>
		<Server Name="M_RPULSE" GUID="{22F1D17D-619C-478E-AFA7-680FF4468BD5}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 015&#13;&#10;Unit  : [-]&#13;&#10;Description : Number of feedback pulses per electrical revolution of the motor. &#13;&#10;This object is used with [M-TYPE] = 2 (EnDAT encoder)."/>
		<Server Name="M_RTEMP" GUID="{8AE89344-57CF-41ED-80D6-6B2FBFB933BE}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 016&#13;&#10;Unit  : [Ohm]&#13;&#10;Description : Resistor threshold for the PTC in the winding of the motor.&#13;&#10;If [I-TEMPM] is greater than M-RTEMP the motor overtemperature bit in [I-STATUS] is set."/>
		<Server Name="M_SER" GUID="{C10ECB98-158A-4B5C-B299-06D5D5BF9673}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 017&#13;&#10;Unit  : [-]&#13;&#10;Description : Serial number of the motor."/>
		<Server Name="M_TORQUE" GUID="{C80C0E11-CE66-43FB-908E-252C9466FD37}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 008&#13;&#10;Unit  : [mNm/A]&#13;&#10;Description : Torque constant of the motor.&#13;&#10;This object has effect on the Resolver observer current feed forward. &#13;&#10;See [F-FF]."/>
		<Server Name="M_TROT" GUID="{9C10E564-3715-4054-8BE3-F4FD4AFAF2BD}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 027&#13;&#10;Unit  : [ms]&#13;&#10;Description: Magnetic flux time constant Induction motor"/>
		<Server Name="M_TYPE" GUID="{0FA73E7E-F04C-421F-BA1B-B57957E43EC1}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 012&#13;&#10;Unit  : [-]&#13;&#10;Description : Motor- and Feedbacktype&#13;&#10;Byte 0: Feedbacktype&#13;&#10;0 .. resolver&#13;&#10;1 .. resolver with multiturn add on&#13;&#10;2 .. Endat&#13;&#10;3 .. Hiperface&#13;&#10;4 .. linear encoder (only sin/cos)&#13;&#10;5 .. sensorless&#13;&#10;6 .. incremental encoder&#13;&#10;7 .. Endat with Sdrive-Multiturnextension  -+ 32 Bit, see [K-FBRW] 3 and [A-POFF]&#13;&#10;&#13;&#10;Byte 1: Motortype&#13;&#10;0 .. synchronous motor&#13;&#10;1 .. asynchronous motor&#13;&#10;2 .. asynchronous motor main spindle&#13;&#10;3 .. two phase step motor&#13;&#10;4 .. three phase step motor&#13;&#10;&#13;&#10;currently supported types:&#13;&#10;0 ...... synchronus motor with resolver feedback&#13;&#10;2 ...... synchronus motor with Endat feedback&#13;&#10;4 ...... synchronus motor with incremental encoder feedback&#13;&#10;773 ... two phase step motor (0x305)&#13;&#10;1029 .. three phase step motor (0x405)"/>
		<Server Name="M_UBOOST" GUID="{82947220-063E-4B84-B0CF-5FD5DDADA8C6}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 025&#13;&#10;Unit  : [V]&#13;&#10;Description : Boost Voltage Induction Motor"/>
		<Server Name="M_UN" GUID="{FE375935-FEB2-43CF-8213-78EB1EA9BF34}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false" Comment="Para-Nr : 024&#13;&#10;Unit  : [V]&#13;&#10;Description : Nominal Voltage Induction Motor"/>
	</Channels>
	<RevDoku>
		<Owner Company="Sigmatek" Author="HasHan"/>
		<Dokumentation Revision="1.4" Date="14.01.2019" Author="PieSte" Company="Sigmatek" Description="Parameter M-KN added."/>
		<Dokumentation Revision="1.3" Date="08.11.2016" Author="ZoePat" Company="Sigmatek" Description="Client &quot;DriveAxis&quot; is now not required."/>
		<Dokumentation Revision="1.2" Date="16.09.2011" Author="RamAnd" Company="Sigmatek" Description="Added new parameters M_UN and M_UBOOST"/>
		<Dokumentation Revision="1.1" Date="10.08.2010" Author="Ramand" Company="Sigmatek" Description="For the number of parameters in this group now a constant is used instead of the numerical value for easier change in the future"/>
		<Dokumentation Revision="1.0" Date="05.08.2009" Author="HasHan" Company="Sigmatek" Description="Creation"/>
	</RevDoku>
	<Network Name="_DriveMotorPara">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{B7AC5A18-77C5-4D09-BA0B-38AF1FE0F6B4}"
				Class      = "_DriveParaBase"
				Position   = "(218,120)"
				Visualized = "false">
				<Channels>
					<Server Name="State"/>
					<Client Name="DriveAxis"/>
					<Client Name="ErrorCode"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.State" Destination="_base.State" Vertices="(740,210),(568,210),"/>
			<Connection Source="_base.DriveAxis" Destination="this.DriveAxis" Vertices="(218,210),(38,210),"/>
			<Connection Source="_base.ErrorCode" Destination="this.ErrorCode" Vertices="(218,270),(38,270),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using _DriveParaBase

_DriveMotorPara : CLASS
: _DriveParaBase
  //Servers:
	M_NAME1 	: SvrCh_DINT;
	M_NAME2 	: SvrCh_DINT;
	M_NAME3 	: SvrCh_DINT;
	M_INULL 	: SvrCh_DINT;
	M_IPEAK 	: SvrCh_DINT;
	M_NMAX 	: SvrCh_DINT;
	M_POL 	: SvrCh_DINT;
	M_TORQUE 	: SvrCh_DINT;
	M_L 	: SvrCh_DINT;
	M_R 	: SvrCh_DINT;
	M_J 	: SvrCh_DINT;
	M_TYPE 	: SvrCh_DINT;
	M_RPOL 	: SvrCh_DINT;
	M_ROFF 	: SvrCh_DINT;
	M_RPULSE 	: SvrCh_DINT;
	M_RTEMP 	: SvrCh_DINT;
	M_SER 	: SvrCh_DINT;
	M_BRAKE 	: SvrCh_DINT;
	M_KN 	: SvrCh_DINT;
	M_IFWEAK 	: SvrCh_DINT;
	M_BRDIS 	: SvrCh_DINT;
	M_BREN 	: SvrCh_DINT;
	M_UN 	: SvrCh_DINT;
	M_UBOOST 	: SvrCh_DINT;
	M_IMAG 	: SvrCh_DINT;
	M_TROT 	: SvrCh_DINT;
  //Clients:
  //Variables:
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION VIRTUAL GLOBAL RefreshPara
		VAR_INPUT
			usParaNr 	: USINT;
			dValue 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL RefreshAllPara;
	
	FUNCTION VIRTUAL GLOBAL M_NAME1::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_NAME2::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_NAME3::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_INULL::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_IPEAK::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_NMAX::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_POL::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_TORQUE::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_L::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_R::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_J::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_TYPE::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_RPOL::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_ROFF::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_RPULSE::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_RTEMP::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_SER::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_BRAKE::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
				//! <Function Comment="Para-Nr : 025&#13;&#10;Unit  : []&#13;&#10;Description:" Name="M_KN.Write"/>
	FUNCTION VIRTUAL GLOBAL M_KN::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_IFWEAK::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_BRDIS::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_BREN::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_UN::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_UBOOST::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_IMAG::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL M_TROT::Write
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


FUNCTION GLOBAL TAB _DriveMotorPara::@CT_
0$UINT,
2#0100000000000000$UINT, //TY__DRIVEMOTORPARA
1$UINT, 4$UINT, (SIZEOF(::_DriveMotorPara))$UINT, 
26$UINT, 0$UINT, 0$UINT, 
TO_UDINT(4269273944), "_DriveMotorPara", //Class
TO_UDINT(3299882984), "_DriveParaBase", 1$UINT, 2$UINT, //Baseclass
//Servers:
(::_DriveMotorPara.M_NAME1.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(630263164), "M_NAME1", 
(::_DriveMotorPara.M_NAME2.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3164101830), "M_NAME2", 
(::_DriveMotorPara.M_NAME3.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3416222800), "M_NAME3", 
(::_DriveMotorPara.M_INULL.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(579962170), "M_INULL", 
(::_DriveMotorPara.M_IPEAK.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2780556552), "M_IPEAK", 
(::_DriveMotorPara.M_NMAX.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(924612116), "M_NMAX", 
(::_DriveMotorPara.M_POL.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2434270416), "M_POL", 
(::_DriveMotorPara.M_TORQUE.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2191231954), "M_TORQUE", 
(::_DriveMotorPara.M_L.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3309996961), "M_L", 
(::_DriveMotorPara.M_R.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1061533378), "M_R", 
(::_DriveMotorPara.M_J.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(740896404), "M_J", 
(::_DriveMotorPara.M_TYPE.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(591955338), "M_TYPE", 
(::_DriveMotorPara.M_RPOL.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3178518499), "M_RPOL", 
(::_DriveMotorPara.M_ROFF.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2602164729), "M_ROFF", 
(::_DriveMotorPara.M_RPULSE.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1761724288), "M_RPULSE", 
(::_DriveMotorPara.M_RTEMP.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(456743468), "M_RTEMP", 
(::_DriveMotorPara.M_SER.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2478731104), "M_SER", 
(::_DriveMotorPara.M_BRAKE.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1648130499), "M_BRAKE", 
(::_DriveMotorPara.M_KN.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2905852968), "M_KN", 
(::_DriveMotorPara.M_IFWEAK.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3575970090), "M_IFWEAK", 
(::_DriveMotorPara.M_BRDIS.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2719313147), "M_BRDIS", 
(::_DriveMotorPara.M_BREN.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(4194852276), "M_BREN", 
(::_DriveMotorPara.M_UN.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2037576695), "M_UN", 
(::_DriveMotorPara.M_UBOOST.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(964041354), "M_UBOOST", 
(::_DriveMotorPara.M_IMAG.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(667108184), "M_IMAG", 
(::_DriveMotorPara.M_TROT.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2297906183), "M_TROT", 
//Clients:
END_FUNCTION


#define USER_CNT__DriveMotorPara 4

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT__DriveMotorPara] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION _DriveMotorPara::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= _DriveParaBase::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= _DriveParaBase::State.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, _DriveParaBase::State.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT__DriveMotorPara;
	vmt.CmdTable.Init		:= #Init();
#pragma warning (disable : 74)
	vmt.UserFcts[2]		:= #RefreshPara();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[3]		:= #RefreshAllPara();

#pragma warning (default : 74)
	_DriveParaBase::State.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF _DriveParaBase::State.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_NAME1.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_NAME1::Write() );
	IF M_NAME1.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_NAME2.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_NAME2::Write() );
	IF M_NAME2.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_NAME3.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_NAME3::Write() );
	IF M_NAME3.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_INULL.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_INULL::Write() );
	IF M_INULL.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_IPEAK.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_IPEAK::Write() );
	IF M_IPEAK.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_NMAX.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_NMAX::Write() );
	IF M_NMAX.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_POL.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_POL::Write() );
	IF M_POL.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_TORQUE.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_TORQUE::Write() );
	IF M_TORQUE.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_L.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_L::Write() );
	IF M_L.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_R.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_R::Write() );
	IF M_R.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_J.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_J::Write() );
	IF M_J.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_TYPE.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_TYPE::Write() );
	IF M_TYPE.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_RPOL.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_RPOL::Write() );
	IF M_RPOL.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_ROFF.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_ROFF::Write() );
	IF M_ROFF.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_RPULSE.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_RPULSE::Write() );
	IF M_RPULSE.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_RTEMP.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_RTEMP::Write() );
	IF M_RTEMP.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_SER.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_SER::Write() );
	IF M_SER.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_BRAKE.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_BRAKE::Write() );
	IF M_BRAKE.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_KN.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_KN::Write() );
	IF M_KN.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_IFWEAK.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_IFWEAK::Write() );
	IF M_IFWEAK.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_BRDIS.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_BRDIS::Write() );
	IF M_BRDIS.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_BREN.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_BREN::Write() );
	IF M_BREN.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_UN.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_UN::Write() );
	IF M_UN.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_UBOOST.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_UBOOST::Write() );
	IF M_UBOOST.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_IMAG.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_IMAG::Write() );
	IF M_IMAG.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	M_TROT.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_TROT::Write() );
	IF M_TROT.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
FUNCTION VIRTUAL GLOBAL _DriveMotorPara::Init

  if _firstscan then
    if (IsAxisConnected() = TRUE) then
      DriveAxis.AddParaObjects(Index:=IDX_MOTOR_PARA, pThis:=this); // add the object in the list of the axis
    end_if;
  end_if;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_NAME1::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_NAME1) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_NAME1, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_NAME1 := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_NAME2::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_NAME2) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_NAME2, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_NAME2 := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_NAME3::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_NAME3) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_NAME3, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_NAME3 := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_INULL::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_INULL) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_INULL, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_INULL := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_IPEAK::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_IPEAK) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_IPEAK, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_IPEAK := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_NMAX::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_NMAX) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_NMAX, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_NMAX := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_POL::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_POL) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_POL, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_POL := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_TORQUE::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_TORQUE) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_TORQUE, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_TORQUE := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_L::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_L) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_L, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_L := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_R::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_R) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_R, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_R := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_BREN::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_BREN) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_BREN, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_BREN := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_J::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_J) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_J, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_J := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_TYPE::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_TYPE) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_TYPE, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_TYPE := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_RPOL::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_RPOL) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_RPOL, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_RPOL := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_ROFF::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_ROFF) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_ROFF, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_ROFF := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_RPULSE::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_RPULSE) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_RPULSE, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_RPULSE := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_RTEMP::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_RTEMP) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_RTEMP, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_RTEMP := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_SER::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_SER) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_SER, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_SER := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_BRAKE::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <>M_BRAKE) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_BRAKE, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_BRAKE := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_IFWEAK::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_IFWEAK) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_IFWEAK, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_IFWEAK := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_BRDIS::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_BRDIS) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_BRDIS, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_BRDIS := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::RefreshPara
	VAR_INPUT
		usParaNr 	: USINT;
		dValue 	: DINT;
	END_VAR
  
  case usParaNr of 
  SDD_M_NAME1 :
    M_NAME1 := dValue;
  
  SDD_M_NAME2 :
    M_NAME2 := dValue;
  
  SDD_M_NAME3 :
    M_NAME3 := dValue;
  
  SDD_M_INULL :
    M_INULL := dValue;
  
  SDD_M_IPEAK :
    M_IPEAK := dValue;
  
  SDD_M_NMAX :
    M_NMAX := dValue;
  
  SDD_M_POL :
    M_POL := dValue;
  
  SDD_M_TORQUE :
    M_TORQUE := dValue;
  
  SDD_M_L :
    M_L := dValue;
  
  SDD_M_R :
    M_R := dValue;
  
  SDD_M_J :
    M_J := dValue;
  
  SDD_M_TYPE :
    M_TYPE := dValue;
  
  SDD_M_RPOL :
    M_RPOL := dValue;
  
  SDD_M_ROFF :
    M_ROFF := dValue;
  
  SDD_M_RPULSE :
    M_RPULSE := dValue;
  
  SDD_M_RTEMP :
    M_RTEMP := dValue;
  
  SDD_M_SER :
    M_SER := dValue;
  
  SDD_M_BRAKE :
    M_BRAKE := dValue;
    
  SDD_M_KN :
    M_KN := dValue;    
  
  SDD_M_IFWEAK :
    M_IFWEAK := dValue;
  
  SDD_M_BRDIS :
    M_BRDIS := dValue;
  
  SDD_M_BREN :
    M_BREN := dValue;
  
  SDD_M_IMAG :
    M_IMAG := dValue;
    
  SDD_M_TROT :
    M_TROT := dValue;
    
  SDD_M_UN :
    M_UN := dValue;
    
  SDD_M_UBOOST :
    M_UBOOST := dValue;
    
  end_case;
  
END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::RefreshAllPara

  // number of Parameters in this group
  AnzASyncPara += NBR_MOTOR_PARA;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_IMAG::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_IMAG) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_IMAG, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_IMAG := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_TROT::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_TROT) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_TROT, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_TROT := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_UN::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_UN) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_UN, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_UN := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_UBOOST::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_UBOOST) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_UBOOST, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
  M_UBOOST := input;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL _DriveMotorPara::M_KN::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	if (input <> M_KN) & (bNoASync = FALSE) then
    result := SetASyncCmd(ParaNr:= SDD_M_KN, ParaRdWr:= 1, ParaValue:= input, pThis:= this);
  end_if;
  
	M_KN := input;

END_FUNCTION