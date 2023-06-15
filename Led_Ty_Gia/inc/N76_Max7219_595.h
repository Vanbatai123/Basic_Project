/**
 *
 */

#define SPI_PIN_SS 1
#define SPI_PIN_SS2 2
#define SPI_PIN_CLK 0
#define SPI_PIN_MISO 1
#define SPI_PIN_MOSI 0

#define SPI_Px_SS P1
#define SPI_Px_CLK P1
#define SPI_Px_MISO P0
#define SPI_Px_MOSI P0

#define SPI_PxM1_SS P1M1
#define SPI_PxM1_CLK P1M1
#define SPI_PxM1_MISO P0M1
#define SPI_PxM1_MOSI P0M1

#define SPI_PxM2_SS P1M2
#define SPI_PxM2_CLK P1M2
#define SPI_PxM2_MISO P0M2
#define SPI_PxM2_MOSI P0M2

#define CODEB_MINUS 0x0A
#define CODEB_H 0x0B
#define CODEB_E 0x0C
#define CODEB_L 0x0D
#define CODEB_P 0x0E
#define CODEB_BLANK 0x0F
#define CODEB_DP 0xF0

#define DECODE_MODE 0x09
#define INTENSITY 0x0A
#define SCAN_LIMIT 0x0B
#define SHUTDOWN 0x0C
#define DISPLAY_TEST 0x0F

void SPI_begin(void);
void SPI_transfer(uint8_t data);
//uint32_t pow10(uint8_t n);
void HC595_transfer(uint8_t data);
void MAX7219_begin(void);
void MAX7219_transfer(uint8_t chip, const uint8_t addr, const uint8_t data);
void MAX7219_transferAll(int8_t chip, const uint8_t addr, const uint8_t data);