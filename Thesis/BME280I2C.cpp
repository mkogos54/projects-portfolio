/*
BME280I2CI2C.cpp
This code records data from the BME280I2C sensor and provides an API.
This file is part of the Arduino BME280I2C library.
Copyright (C) 2016  Tyler Glenn

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Written: Dec 30 2015.
Last Updated: Jan 1 2016. - Happy New year!

This header must be included in any derived code or copies of the code.

Based on the data sheet provided by Bosch for the BME280I2C environmental sensor,
calibration code based on algorithms providedBosch, some unit conversations courtesy
of www.endmemo.com, altitude equation courtesy of NOAA, and dew point equation
courtesy of Brian McNoldy at http://andrew.rsmas.miami.edu.
 */
#include "I2c.h"
#include <iostream>
#include "BME280I2C.h"
#include "BME280.h"

// --------------------------------------------------------------------------------------- //
// ------------------------------ I2cFunctions ------------------------------------------- //
// --------------------------------------------------------------------------------------- //
uint8_t I2cBMEFunctions::readByte(uint8_t reg){
    i2c_char_t inbuf, outbuf;
    struct i2c_rdwr_ioctl_data packets;
    struct i2c_msg messages[2];

    /*
     * In order to read a register, we first do a "dummy write" by writing
     * 0 bytes to the register we want to read from.  This is similar to
     * the packet in set_i2c_register, except it's 1 byte rather than 2.
     */
    outbuf = reg;
    messages[0].addr  = _i2c_address;
    messages[0].flags = 0;
    messages[0].len   = sizeof(outbuf);
    messages[0].buf   = &outbuf;

    /* The data will get returned in this structure */
    messages[1].addr  = _i2c_address;
    messages[1].flags = I2C_M_RD/* | I2C_M_NOSTART*/;
    messages[1].len   = sizeof(inbuf);
    messages[1].buf   = &inbuf;

    /* Send the request to the kernel and get the result back */
    packets.msgs      = messages;
    packets.nmsgs     = 2;
    if(ioctl(i2C_file, I2C_RDWR, &packets) < 0){
        rt_printf("Unable to send data (65) "); 
        return 0;
    }

    return inbuf;
}

bool I2cBMEFunctions::readBytes(uint8_t reg, uint8_t count, uint8_t * inbuf) { //changed from bool???
    i2c_char_t outbuf;
    struct i2c_rdwr_ioctl_data packets;
    struct i2c_msg messages[2];

    /*
     * In order to read a register, we first do a "dummy write" by writing
     * 0 bytes to the register we want to read from.  This is similar to
     * the packet in set_i2c_register, except it's 1 byte rather than 2.
     */
    outbuf = reg;
    messages[0].addr  = _i2c_address;
    messages[0].flags = 0;
    messages[0].len   = sizeof(outbuf);
    messages[0].buf   = &outbuf;

    /* The data will get returned in this structure */
    messages[1].addr  = _i2c_address;
    messages[1].flags = I2C_M_RD/* | I2C_M_NOSTART*/;
    messages[1].len   = sizeof(uint8_t)*count;
    messages[1].buf   = inbuf;

    /* Send the request to the kernel and get the result back */
    packets.msgs      = messages;
    packets.nmsgs     = 2;
    if(ioctl(i2C_file, I2C_RDWR, &packets) < 0) {
        rt_printf("Unable to send data (98) ");
        return 1;
    }
}

// --------------------------------------------------------------------------------------- //
// ------------------------------ BME280I2C -------------------------------------------- //
// --------------------------------------------------------------------------------------- //


/****************************************************************/
BME280I2C::BME280I2C
(
  const Settings& settings
):BME280(settings),
  m_settings(settings)
{
}


/****************************************************************/
void BME280I2C::setSettings
(
   const Settings& settings
)
{
   m_settings = settings;
   BME280::setSettings(settings);
}


/****************************************************************/
const BME280I2C::Settings& BME280I2C::getSettings() const
{
   return m_settings;
}


/****************************************************************/
bool BME280I2C::WriteRegister
(
  uint8_t reg,
  uint8_t data
)
{
	bool status = BeginTransmission(); //"Might not be necessary" + line 181
  uint8_t buf[2] = { reg, data };

	if(write(i2C_file, buf, 2) != 2){
		std::cout << "Failed to write register " << (int)reg << " on BME280\n";
		return false;
	}
	return true;
}


// /****************************************************************/
bool BME280I2C::ReadRegister
 (
   uint8_t reg,
   uint8_t *inbuf,
   uint8_t count
 )
 {
 	bool status = BeginTransmission(); //"might not be necessary" + line 162
 	i2c_char_t outbuf;
    struct i2c_rdwr_ioctl_data packets;
    struct i2c_msg messages[2];

    /*
     * In order to read a register, we first do a "dummy write" by writing
     * 0 bytes to the register we want to read from.  This is similar to
     * the packet in set_i2c_register, except it's 1 byte rather than 2.
     */
    outbuf = reg;
    messages[0].addr  = _i2c_address;
    messages[0].flags = 0;
    messages[0].len   = sizeof(outbuf);
    messages[0].buf   = &outbuf;

    /* The data will get returned in this structure */
    messages[1].addr  = _i2c_address;
    messages[1].flags = I2C_M_RD/* | I2C_M_NOSTART*/;
    messages[1].len   = sizeof(uint8_t)*count;
    messages[1].buf   = inbuf;

    /* Send the request to the kernel and get the result back */
    packets.msgs      = messages;
    packets.nmsgs     = 2;
    if(ioctl(i2C_file, I2C_RDWR, &packets) < 0) {
        //rt_printf("Unable to send data (208) ");
        return 1;
    }
 }

/****************************************************************/
void BME280I2C::update
(
)
{
   float temp(NAN), hum(NAN), pres(NAN);

   BME280::TempUnit tempUnit(BME280::TempUnit_Celsius);
   BME280::PresUnit presUnit(BME280::PresUnit_Pa);

   read(pres, temp, hum, tempUnit, presUnit);


   // Print out readings, change HEX to DEC if you prefer decimal output
  // printf("Pressure[Pa]: %f", pres);
   //printf(", Temperature [C]: %f", temp);
   //printf(", Humidity [%]: %f", hum);
   //printf("\n");
   usleep(2000000);
}

bool BME280I2C::BeginTransmission(uint8_t bus, uint8_t i2caddr){
  _i2c_address = i2caddr;
	
	if(initI2C_RW(bus, i2caddr, 0) > 0) return false;
	
	// Read the DEVICE_ID register of the BME280, this is a good test of communication
	uint8_t c = Read8(0xD0);  // Read DEVICE_ID register for BME280
//	rt_printf("BME280: I AM 0x%X, I Should Be 0x%X\n", c, 0x60);
	if(c != 0x60){
	    rt_printf("Could not connect to BME280: 0x%X\n",c);
		return false;
	}

	usleep(100000); 
  return true;
	// rt_printf("BME280 is connected...\n");
  //   // Set to RGB mode, 10k lux, and high IR compensation
  //   bool ret = config(CFG1_MODE_RGB | CFG1_10KLUX, CFG2_IR_ADJUST_HIGH, CFG_DEFAULT);

  //   return ret;
}

uint8_t BME280I2C::Read8(uint8_t reg){
    i2c_char_t inbuf, outbuf;
    struct i2c_rdwr_ioctl_data packets;
    struct i2c_msg messages[2];

    /*
     * In order to read a register, we first do a "dummy write" by writing
     * 0 bytes to the register we want to read from.  This is similar to
     * the packet in set_i2c_register, except it's 1 byte rather than 2.
     */
    outbuf = reg;
    messages[0].addr  = _i2c_address;
    messages[0].flags = 0;
    messages[0].len   = sizeof(outbuf);
    messages[0].buf   = &outbuf;

    /* The data will get returned in this structure */
    messages[1].addr  = _i2c_address;
    messages[1].flags = I2C_M_RD/* | I2C_M_NOSTART*/;
    messages[1].len   = sizeof(inbuf);
    messages[1].buf   = &inbuf;

    /* Send the request to the kernel and get the result back */
    packets.msgs      = messages;
    packets.nmsgs     = 2;
    if(ioctl(i2C_file, I2C_RDWR, &packets) < 0){
        rt_printf("Unable to send data (282) "); 
        return 0;
    }

    return inbuf;
}


