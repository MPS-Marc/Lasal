#ifndef SIOL_MASTER_H
#pragma once
#define SIOL_MASTER_H


//*****************************************************************************
//** NEWINST CMDs SIOL reserved from 0x8080 - 0x808F                         **
//*****************************************************************************

#define CMD_SIOL_DEFINES_MIN                 16#8080
#define CMD_SIOL_DEFINES_MAX                 16#808F

// COMMANDS FROM DEVICE TO MANAGER (login, get data, set data,...)

#define CMD_SIOL_DEVICE_OBJECT_LOGIN              16#8080
#define CMD_SIOL_DEVICE_GET_PDO_DATA              16#8081
#define CMD_SIOL_DEVICE_SET_PDO_DATA              16#8082
#define CMD_SIOL_DEVICE_GET_ASY_PARA              16#8083
#define CMD_SIOL_DEVICE_SET_ASY_PARA              16#8084
#define CMD_SIOL_DEVICE_ASY_FUNCTION_ID           16#8085
#define CMD_SIOL_DEVICE_GET_ASY_STATE             16#8086
#define CMD_SIOL_DEVICE_SET_PORT_MODE             16#8087
#define CMD_SIOL_DEVICE_RECONNECT                 16#8088

// COMMANDS FROM DEVICE TO MANAGER with return callback (get asy data, set asy data,...)
#define CMD_SIOL_DEVICE_RECONNECT_BUFFERED        16#8089


// COMMANDS FROM MANAGER TO DEVICE (events like connect,..)

#define CMD_SIOL_DEVICE_INFO_UPDATE               16#808A
#define CMD_SIOL_DEVICE_ADD_EVENT                 16#808B

// COMMANDS FROM DEVICE TO MANAGER with return callback (get asy data, set asy data,...)
#define CMD_SIOL_DEVICE_SET_PORT_MODE_BUFFERED    16#808C
#define CMD_SIOL_DEVICE_GET_ASY_PARA_BUFFERED     16#808D
#define CMD_SIOL_DEVICE_SET_ASY_PARA_BUFFERED     16#808E
#define CMD_SIOL_DEVICE_ASY_FUNCTION_ID_BUFFERED  16#808F

//*****************************************************************************
//** GENERAL DEFINES                                                         **
//*****************************************************************************

#define SIOL_MASTER_PORT_NO                      255

#define SIOL_MAX_PORTS_SUPPORTED                   4

#define SIOL_MAX_PDO_SIZE                         32

#define SIOL_MAX_SDO_DATA_SIZE                   232

#define SIOL_SDO_TIMEOUT                        SDIAS_SDO_TIMEOUT*2

#define SIOL_SDO_RESPONSE_TIMEOUT              10000

#define SIOL_EVENT_COUNTER_MASK                16#0F

#define SIOL_EVENT_BUFFER_SIZE                    20

// we have to wait between the scanmode and the fixed mode because some devices do not support the immediate mode switch (according to specification 500ms is the maximum time it can take for the device to be ready)
#define SIOL_WAIT_FOR_DISABLE                    500

// minimum cycle time of SDCI master cyle in µs
#define SIOL_MINIMUM_MASTER_CYCLE_TIME          1000


// offsets at the module
#define SIOL_OFFSET_INFO_FOR_FIRMWARE         16#000
#define SIOL_OFFSET_INFO_FOR_PLC              16#010
#define SIOL_OFFSET_MAPPING_PROCESS_DATA      16#020
#define SIOL_OFFSET_SERVICE_DATA_AREA         16#080
#define SIOL_OFFSET_RT_READ_HEADER            16#1F1
#define SIOL_OFFSET_RT_READ_DATA              16#200
#define SIOL_OFFSET_RT_WRITE_DATA             16#280

#define SIOL_USE_SDOBUFFER 

//#define SIOL_ENABLE_DEBUG_LOGGING
#ifdef SIOL_ENABLE_DEBUG_LOGGING
  #pragma message("SDIAS SDCI MASTER DEBUG LOGGING ACTIVE");
#endif

#endif // SIOL_MASTER_H