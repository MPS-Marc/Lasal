(*
 *
 *)

#define	cMaxAsciiLine	1024			// Max length of an ASCII line ( 1024)
//#define Separator		';'			// Separator between two elements
#define Separator	 59  // ; = ascii 59 16#09		// Separator between two elements
//#define Nul				16#00		// NUL	- Nil
#define SOH				16#01		// SOH	- Start of heading
#define _STX				16#02		// STX	- Start of text
#define ETX				16#03		// ETX	- End of text
#define EOT				16#04		// EOT	- End of transmission
//#define ENQ			16#05		// Enq	- Enquiry
#define ACK_				16#06		// Ack	- Acknowledge
//#define BEL			16#07		// Bel	- Bel
#define BS				16#08		// BS	- BackSpace
#define HT				16#09		// HT	- Horizontal Tabulation
#define LF 				16#0A		// LF	- LineFeed
//#define VT			16#0B		// VT	- Vertcal Tabulation
#define FF				16#0C		// FF	- Form Feed
#define CRasc 		16#0D		// CR	- Cariadge return
//#define SO			16#0E		// SO	- Shift out
//#define SI			16#0F		// SI	- Shift in
//#define DLE			16#10		// DLE	- Data link escape
//#define DC1			16#11		// DC1	- Device control 1
//#define DC2			16#12		// DC2	- Device control 2
//#define DC3			16#13		// DC3	- Device control 3
//#define DC4			16#14		// DC4	- Device control 4
#define NAK				16#15		// NAK	- Negative acknowledge
//#define SYN			16#16		// SYN	- Synchroous idle
//#define ETB			16#17		// ETB	- End of transmission block
//#define CAN			16#18		// CAN	- Cancel
//#define EM			16#19		// EM	- End of medium
//#define SUB			16#1A		// SUB	- Substitute
#define ESC				16#1B		// ESC	- Escape
//#define FS			16#1C		// FS	- File separator
//#define GS			16#1D		// GS	- Group separator
//#define RS			16#1E		// RS	- Record separator 
#define US			16#1F		// US	- Unit separator
#define _space		16#20		// space

(* ===============================================================================================
 * functions of the string library
 * ===============================================================================================
 * #define STRING_STR
 *
 *	FUNCTION GLOBAL _strcpy
 *		VAR_INPUT	dest            : ^CHAR;
 *					src             : ^CHAR;
 *	FUNCTION GLOBAL _strcat
 *		VAR_INPUT	dest            : ^CHAR;
 *	 				src             : ^CHAR;
 *	FUNCTION GLOBAL _memmove
 *		VAR_INPUT	dest            : ^void;
 *					src             : ^void;
 *					anz             : UDINT;
 *	FUNCTION GLOBAL _strupr
 *		VAR_INPUT	str				: ^Char;
 *	FUNCTION GLOBAL _memicmp
 *		VAR_INPUT	str1            : ^void;
 *					str2            : ^void;
 *					len             : UDINT;
 *		VAR_OUTPUT	result          : UDINT;
 *	FUNCTION GLOBAL _strcmp
 *		VAR_INPUT	str1            : ^char;
 *					str2            : ^char;
 *		VAR_OUTPUT	retcode         : UINT;
 *	FUNCTION GLOBAL _stricmp
 *		VAR_INPUT	str1            : ^char;
 *					str2            : ^char;
 *		VAR_OUTPUT	retcode         : UDINT;
 *	FUNCTION GLOBAL _strchr
 *		VAR_INPUT	src             : ^char;
 *					chr             : CHAR;
 *		VAR_OUTPUT	dest            : ^CHAR;
 *	FUNCTION GLOBAL _strlen
 *		VAR_INPUT	src             : ^CHAR;
 *		VAR_OUTPUT	retcode         : UDINT;
 *	FUNCTION GLOBAL _memcmp
 *		VAR_INPUT	ptr1			: ^void;
 *					ptr2			: ^void;
 *					cntr			: UDINT;
 *		VAR_OUTPUT	notequal		: UDINT;
 *	FUNCTION GLOBAL _strncpy
 *		VAR_INPUT	dest            : ^CHAR;
 *					src             : ^CHAR;
 *					max             : UDINT;
 *	FUNCTION GLOBAL _memcpy
 *		VAR_INPUT	ptr1			: ^void;
 *					ptr2			: ^void;
 *					cntr			: UDINT;
 *	FUNCTION GLOBAL _memset
 *		VAR_INPUT	dest			: ^void;
 *					usByte			: USINT;
 *					cntr			: UDINT;
 *	FUNCTION GLOBAL _itoa
 *		VAR_INPUT	udNumber		: UDINT;
 *					pString			: ^CHAR;
 *
 *)