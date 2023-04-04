/**
 * N76_Flash.c
 * N76E read write flash
 * Created: 2022/06/02
 * Author: TaiVB
 */

#include "include.h"
#include "N76_Flash.h"

uint8_t APROM_read_byte(uint16_t u16_addr)
{
	uint8_t rdata;
	rdata = *((uint16_t __code *)u16_addr);
	return rdata;
}
uint16_t APROM_read_2byte(uint16_t u16_addr)
{
	uint16_t rdata;
	rdata = *((uint16_t __code *)u16_addr);
	return rdata;
}

/**
 * flash data into APROM
 */
void APROM_write_byte(uint16_t addr, uint8_t data)
{
	// write new byte
	setbAP(CHPCON, IAPEN); // enable IAP
	setbAP(IAPUEN, APUEN); // enable IAP updated
	IAPCN = BYTE_PROGRAM_AP;

	IAPAH = (uint8_t)((addr) >> 8);
	IAPAL = (uint8_t)((addr)&0xFF);
	IAPFD = data;

	setbAP(IAPTRG, IAPGO); // Trigger_IAP();

	clrbAP(IAPUEN, APUEN);
	clrbAP(CHPCON, IAPEN);
}

// ******************************************************************************************************************/		
void Erase_APROM(uint16_t addr)
{   
	setbAP(CHPCON, IAPEN); // enable IAP
	IAPFD = 0xFF;												// IMPORTANT !! To erase function must setting IAPFD = 0xFF 
    IAPCN = PAGE_ERASE_AP;
	setbAP(IAPUEN, APUEN); // enable IAP updated

    // for(u16Count=0x0000;u16Count<DATA_SIZE/PAGE_SIZE;u16Count++)		//
    // {        
	IAPAH = (uint8_t)((addr) >> 8);
	IAPAL = (uint8_t)((addr)&0xFF);
	setbAP(IAPTRG, IAPGO); // Trigger_IAP();
    // } 
	clrbAP(IAPUEN, APUEN);
	clrbAP(CHPCON, IAPEN);
}