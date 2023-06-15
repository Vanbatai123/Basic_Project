/**
 * N76_DS1307.h
 * N76E Interface Ds1307
 * Created: 2022/05/25
 * Author: TaiVB
 */

#define I2C_CLOCK           0x27 // Fclk = Fsys / (4*(prescalar + 1))
#define I2C_ACK             0x00
#define I2C_NACK            0x01
#define I2C_W               0x00
#define I2C_R               0x01

#define DS1307_SEC_REG      0x00
#define DS1307_MIN_REG      0x01
#define DS1307_HOUR_REG     0x02
#define DS1307_DAY_REG      0x03
#define DS1307_DATE_REG     0x04
#define DS1307_MONTH_REG    0x05
#define DS1307_YEAR_REG     0x06
#define DS1307_CTRL_REG     0x07
#define DS1307_ADDR         0xD0

#define DS1307_WR (uint8_t)(DS1307_ADDR + I2C_W)
#define DS1307_RD (uint8_t)(DS1307_ADDR + I2C_R)

#define timeout_count       1000

// I2C function
void I2C_config(void);
void I2C_start(void);
void I2C_stop(void);
uint8_t I2C_read(uint8_t ack_mode);
void I2C_write(uint8_t value);


// DS1307 function
void DS1307_begin(void);
uint8_t DS1307_read(uint8_t address);
void DS1307_write(uint8_t address, uint8_t value);
uint8_t bcd_to_decimal(uint8_t value);
uint8_t decimal_to_bcd(uint8_t value);