/*
 * ibus.h
 *
 *  Created on: Oct 5, 2019
 *      Author: ctphc
 */

#ifndef INC_IBUS_H_
#define INC_IBUS_H_

#include "usart.h"              // header from stm32cubemx code generate
#include <stdbool.h>


/* User configuration */
#define IBUS_UART				(&huart1)
#define IBUS_USER_CHANNELS		4		// Use 6 channels


/* Defines */
#define IBUS_LENGTH				0x20	// 32 bytes
#define IBUS_COMMAND40			0x40	// Command to set servo or motor speed is always 0x40
#define IBUS_MAX_CHANNLES		14


/* Main Functions */
void ibus_init();
bool ibus_read(uint16_t* ibus_data);


/* Sub Functions */
bool ibus_is_valid();
bool ibus_checksum();
void ibus_update(uint16_t* ibus_data);
void ibus_soft_failsafe(uint16_t* ibus_data, uint8_t fail_safe_max);
void ibus_reset_failsafe();

#endif /* INC_IBUS_H_ */
