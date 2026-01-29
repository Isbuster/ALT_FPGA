#include <stdio.h>
#include <system.h>
#include <io.h>
#include <ctype.h>
#include <unistd.h> // for usleep function

// RTC I2C address
#define RTC_ADR 0x68
#define byte unsigned char

// I2C Master control signals
#define EN 0x1
#define STOP 0x2
#define WRITE 0x0
#define READ 0x1
#define CM 0x1
#define DATA_RDY 0x2
#define DATA_NEW 0x8
#define MASTER_START 0x2
#define READ_BYTE_ADDR (0x1)
#define IDLE 0x1 // idle bit
#define Lesing_klart 0x2

// I2C MASTER mapped register offsets
#define START_STOP 0 * 4
#define SLAVE_ADDR_WR 1 * 4
#define CLOCK_MODE 2 * 4
#define WRITE_BYTE 3 * 4
#define NACK 4 * 4
#define DT_NEW_FULL_DTDRDY_DONE 5 * 4
#define MS_IDLE 6 * 4
#define READ_BYTE 7 * 4

// RTC register addresses
#define SECONDS 0x0
#define MINUTES 0x1
#define HOURS 0x2
#define WEEKDAY 0x3
#define DATE 0x4
#define MONTH 0x5
#define YEAR 0x6


// Function declarations
byte to_bcd(byte value);
void set_rtc_time(byte second, byte minute, byte hour, byte week_day, byte day, byte month, byte year);
void get_rtc_time(byte *second, byte *minute, byte *hour, byte *week_day, byte *day, byte *month, byte *year);

// Main function
int main() {
    printf("Hello Oblig 3\n");

    // Set clock mode (e.g. fast or standard
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, CLOCK_MODE, 0x0);
    // Set RTC time (example: 12:55:25, Tuesday 15/10/2022)
    set_rtc_time(25, 55, 12, 3, 15, 10, 22);
    printf("RTC time set complete\n");

    byte last_second = 255; // unlikely value

    while (1) {
        byte second, minute, hour, week_day, day, month, year;
        get_rtc_time(&second, &minute, &hour, &week_day, &day, &month, &year);
        printf("Clock: %02u:%02u:%02u Date: %02u/%02u/%02u\n",
        hour, minute, second, day, month, year);
    }

    return 0;
}

// Convert normal byte to BCD format
byte to_bcd(byte value) {
    return ((value / 10) << 4) | (value % 10);
}

// Set RTC time and date via I2C
void set_rtc_time(byte second, byte minute, byte hour, byte week_day, byte day, byte month, byte year) {
    byte bcd_second = to_bcd(second);
    byte bcd_minute = to_bcd(minute);
    byte bcd_hour = to_bcd(hour);
    byte bcd_week_day = to_bcd(week_day);
    byte bcd_day = to_bcd(day);
    byte bcd_month = to_bcd(month);
    byte bcd_year = to_bcd(year);

    // Write sequence to set time
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, SLAVE_ADDR_WR, (RTC_ADR << 1) | WRITE);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, START_STOP, EN);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, SECONDS);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, bcd_second);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, bcd_minute);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, bcd_hour);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, bcd_week_day);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, bcd_day);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, bcd_month);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, bcd_year);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, START_STOP, STOP);

    // Wait until Master is idle
    while ((IORD_32DIRECT(I2C_MASTER_11_0_BASE, MS_IDLE) & IDLE) == 0);
}

// Get time and date from RTC (DS3231)
void get_rtc_time(byte *second, byte *minute, byte *hour, byte *week_day, byte *day, byte *month, byte *year) {
    // 1. Send slave address with WRITE bit to set register pointer
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, SLAVE_ADDR_WR, (RTC_ADR << 1) | READ);
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, START_STOP, EN);
    // 2. Write address of SECONDS register
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, WRITE_BYTE, SECONDS);
    // 3. Issue STOP
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, START_STOP, STOP);
    // Sjekk om lesing klart
    while ((IORD_32DIRECT(I2C_MASTER_11_0_BASE, NACK) & Lesing_klart) == 0);
    // 4. Read 7 bytes: sec, min, hour, weekday, day, month, year
    byte bcd_values[7];
    for (int i = 0; i < 7; i++) {
        while ((IORD_32DIRECT(I2C_MASTER_11_0_BASE, DT_NEW_FULL_DTDRDY_DONE) & DATA_RDY) == 0) {
            // Wait for DATA_RDY
        }
        bcd_values[i] = IORD_32DIRECT(I2C_MASTER_11_0_BASE, READ_BYTE) &0xFF;
        while ((IORD_32DIRECT(I2C_MASTER_11_0_BASE, DT_NEW_FULL_DTDRDY_DONE) & DATA_NEW) == 0) {
            // Wait for DATA_NEW
        	}
    }
    IOWR_32DIRECT(I2C_MASTER_11_0_BASE, START_STOP, STOP);
    while ((IORD_32DIRECT(I2C_MASTER_11_0_BASE, MS_IDLE) & IDLE) == 0);

    // 7. Convert BCD to decimal
    *second   = ((bcd_values[0] >> 4) * 10) + (bcd_values[0] & 0x0F);
    *minute   = ((bcd_values[1] >> 4) * 10) + (bcd_values[1] & 0x0F);
    *hour     = ((bcd_values[2] >> 4) * 10) + (bcd_values[2] & 0x0F);
    *week_day = ((bcd_values[3] >> 4) * 10) + (bcd_values[3] & 0x0F);
    *day      = ((bcd_values[4] >> 4) * 10) + (bcd_values[4] & 0x0F);
    *month    = ((bcd_values[5] >> 4) * 10) + (bcd_values[5] & 0x0F);
    *year     = ((bcd_values[6] >> 4) * 10) + (bcd_values[6] & 0x0F);
}
