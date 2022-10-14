
// Communication dimensions -------------------------------------------------------------
#define cCanOpenTOTime			1000				  // Communication timeout time in mSec
#define cCanOpenMaxRetries		10					// Max number of retries
#define cPollBufferSize			  10					// Size of the Poll table
#define cCanOpenMask			2#00000111111		// CanOpen address masker ( Max 128)
#define cCanOpenMaxNode			 128					// Max number of Can Open device's

// SDO CommandCode's --------------------------------------------------------------------
//
//	Bit 1		?
//	Bit 2		?
//	Bit 3,4		Size			2#00= 4 byte, 2#01= 3 byte, 2#10= 2 byte. 2#11= 1 byte
//	Bit 5		0
//	Bit 6		Read/Write		2#1= Write,	2#1= Read
//	Bit 7		?
//	Bit 8		Error
//
#define cWrReq1					  16#2F				// Write request 1 Byte		2#00101111
#define cWrReq2					  16#2B				// Write request 2 Byte		2#00101011
#define cWrReq3					  16#27				// Write request 3 Byte		2#00100111
#define cWrReq4					  16#23				// Write request 4 Byte		2#00100011
#define cRdReq1					  16#4C				// Read request 1 Byte		2#01001111
#define cRdReq2					  16#48				// Read request 2 Byte		2#01001000
#define cRdReq3					  16#44				// Read request 3 Byte		2#01000100
#define cRdReq4					  16#40				// Read request 4 Byte		2#01000000
#define cWrRsp1					  16#6C				// Write responce 1 Byte	2#01101100
#define cWrRsp2					  16#68				// Write responce 2 Byte	2#01101000
#define cWrRsp3					  16#64				// Write responce 3 Byte	2#01100100
#define cWrRsp4					  16#60				// Write responce 4 Byte	2#01100000
#define cRdRsp1					  16#4F				// Read responce 1 Byte		2#01001111
#define cRdRsp2					  16#4B				// Read responce 2 Byte		2#01001011
#define cRdRsp3					  16#47				// Read responce 3 Byte		2#01000011
#define cRdRsp4					  16#43				// Read responce 4 Byte		2#01000111
#define cErrRsp					  16#80				// Error responce			    2#10000000

// Cob ID addresses ---------------------------------------------------------------------
#define cNmt					    16#000      // 00000
#define cSync					    16#080      // 00128
#define cEmcy					    16#080      // 00128 + node
#define cTimeStamp			  16#100      // 00256 + node
#define cPdoRx1					  16#180      // 00384 + node
#define cPdoTx1					  16#200      // 00512 + node
#define cPdoRx2					  16#280      // 00640 + node
#define cPdoTx2					  16#300      // 00768 + node
#define cPdoRx3					  16#380      // 00896 + node
#define cPdoTx3					  16#400      // 01024 + node
#define cPdoRx4					  16#480      // 01152 + node
#define cPdoTx4					  16#500      // 01280 + node
#define cSdoRx1					  16#580      // 01408 + node
#define cSdoTx1					  16#600      // 01536 + node
#define cNmtErr					  16#700      // 01792 + node

// NMT Command code ----------------------------------------------------------------------
#define cNMTStartRemote   16#01       // 1
#define cNMTStopremote    16#02       // 2
#define cNMTGoPreOper     16#80       // 128
#define cNMTResetNode     16#81       // 129
#define cNMTResetComm     16#82       // 130

// NMT State code ------------------------------------------------------------------------
#define cNMTInitialising  16#00       // 0
#define cNMTDisconnected  16#01       // 1
#define cNMTConnecting    16#02       // 2
#define cNMTPreparing     16#03       // 3
#define cNMTStoped        16#04       // 4
#define cNMTOperational   16#05       // 5
#define cNMTPreOper       16#7F       // 127
