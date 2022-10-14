(*
 * CAN CHIP dimensions
 *)

#define cMaxCanMem		16#7FF		// Size of CAN memory or CAN objects. 0-2047.
#define cMaxCanData		8			// Size of CAN data.

(*
 * Testing features
 *)
//#define CANTestMode					// Enable clearing all the not used data for read-a-billety
//#define TestLoop1					// Enable data loopback before the CAN chip.
