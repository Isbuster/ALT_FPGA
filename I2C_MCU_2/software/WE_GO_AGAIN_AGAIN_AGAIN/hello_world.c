/*
* "RTC" software.
*
* This software communicates with DS3231 RTC-Module using I2C
*
*/

#include <stdio.h>
#include <system.h>
#include <io.h>
#include <ctype.h>

// RTC I2C-adresse
#define RTC_ADR 0x68
#define byte unsigned char

// I2CMaster controllsignal
#define STOP 1 << 8
#define READ 0x1

// RTC register
#define SECONDS 0x0
#define MINUTES 0x1
#define HOURS 0x2
#define WEEKDAY 0x3
#define DATE 0x4
#define MONTH 0x5
#define YEAR 0x6
#define TEMP_HIGH 0x11
#define TEMP_LOW 0x12

/// I2C MASTER register
#define TFR_CMD 0 * 4
#define RX_DATA 1 * 4
#define CTRL 2 * 4
#define STATUS 3 * 4
#define TFR_CMD_FIFO 4 * 4
#define RX_DATA_FIFO 5 * 4
#define OP_CNT 6 * 4

void delay(int value)
{
    for (int i = 0; i < value; i++);
}

unsigned char get_rtc_reg(unsigned char reg_adr);
void get_rtc_multi_reg(unsigned char reg_adr, unsigned char num_regs, unsigned char *data);
void set_rtc_reg(unsigned char reg_adr, unsigned char value);
unsigned char bcd2bin_two_digits(unsigned char bcd_in);
unsigned char bin2bdc_two_digits(unsigned char bin_in);

float get_rtc_temp(void);
void get_rtc_time(byte *second, byte *minute, byte *hour, byte *week_day, byte *day, byte *month, unsigned short int *year);
void set_rtc_time(byte second, byte minute, byte hour, byte week_day, byte day, byte month, byte year);

void set_single_slave_reg(byte adr, byte reg, byte val);
byte get_single_slave_reg(byte adr, byte reg);

byte get_single_slave_rtc(byte reg);
void set_single_slave_rtc(byte reg, byte val);




int main()
{
    unsigned int pass_amnt = 0;

    byte old_sek, sek, min, timer, temp_high, temp_low, year, month, date, weekday;
    //IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, RTC_ADR); // Enable I2C Master
    //delay(1000000); // Wait for 1ms
    //IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, MINUTES); // Enable I2C Master
    //delay(1000000); // Wait for 1ms
    //IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x5|STOP); // Enable I2C Master
    //delay(1000000); // Wait for 1ms
    //IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, RTC_ADR|READ); // Enable I2C Master
    //delay(1000000); // Wait for 1ms
    //IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, STOP); // Enable I2C Master
    //delay(1000000); // Wait for 1ms
    //svar = IORD_32DIRECT(I2C_MASTER_BASE, RX_DATA); // Enable I2C Master
    //delay(1000000); // Wait for 1ms
    //enere = svar & 0x0f;
    //tiere = (svar >> 4) & 0x0f;
    //printf("RTC: %d:%d\n", tiere, enere);

    set_single_slave_rtc(SECONDS, 0x0); // Set seconds to 0
    set_single_slave_rtc(MINUTES, 0x15); // Set minutes to 5
    set_single_slave_rtc(HOURS, 0x14 | 0x40); // Set hours to 12

    set_single_slave_rtc(WEEKDAY, 0x2); // Set weekday to Monday
    set_single_slave_rtc(DATE, 0x28); // Set date to 28th
    set_single_slave_rtc(MONTH, 0x05); // Set month to May
    set_single_slave_rtc(YEAR, 0x25); // Set year to 2025

    while ((0xF & IORD_32DIRECT(I2C_MASTER_BASE, TFR_CMD_FIFO)) != 0);

    while (1)
    {
        sek = get_single_slave_rtc(SECONDS); // Get seconds
        if (sek != old_sek) // If seconds are the same, skip
        {
            old_sek = sek;
            
            min = get_single_slave_rtc(MINUTES); // Get minutes
            
            timer = get_single_slave_rtc(HOURS) & 0x3F; // Get hours

            weekday = get_single_slave_rtc(WEEKDAY); // Get weekday
            date = get_single_slave_rtc(DATE); // Get date
            month = get_single_slave_rtc(MONTH) & 0x1F; // Get month
            year = get_single_slave_rtc(YEAR); // Get year
    
            printf("TIME: %02x:%02x:%02x\n", timer, min & 0x7F, sek & 0x7F);
            printf("DATE: %02x.%02x.%02x\n", date, month, year + 0x2000); // Print date
            printf("WEEKDAY: %d\n", weekday); // Print weekday
              

            temp_high = get_single_slave_rtc(TEMP_HIGH); // Get high temperature byte
            temp_low = get_single_slave_rtc(TEMP_LOW); // Get low temperature byte
            float temp = ((temp_high & 0x7F) + (temp_low / 256.0)); // Calculate temperature
            if (temp_high & 0x80) // If high byte is negative
            {
                temp = -temp; // Make temperature negative
            }
            printf("RTC Temp: %.2f C\n\n", temp); // Print temperature
        }
    }
        
    
    

    


//IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x0F);
//IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x0F);
//IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x0F);
//IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x0F);
//IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x0F);
//IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x0F);
//IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x0F);
//IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, 0x0F);
//svar = IORD_32DIRECT(I2C_MASTER_BASE, TFR_CMD);
//
//
//printf("RTC: %d\n", svar);

}

void set_single_slave_reg(byte adr, byte reg, byte val)
{
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, (adr<<1));
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, reg);
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, val|STOP);
    while ((0xF & IORD_32DIRECT(I2C_MASTER_BASE, TFR_CMD_FIFO)) != 0);
}

void set_single_slave_rtc(byte reg, byte val)
{
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, (RTC_ADR<<1));
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, reg);
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, val|STOP);
    while ((0xF & IORD_32DIRECT(I2C_MASTER_BASE, TFR_CMD_FIFO)) != 0);
}

byte get_single_slave_rtc(byte reg)
{
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, (RTC_ADR<<1));
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, STOP|reg);
    while ((0xF & IORD_32DIRECT(I2C_MASTER_BASE, TFR_CMD_FIFO)) != 0);


    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, (RTC_ADR<<1)|READ);
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, STOP);

    while ((0xF & IORD_32DIRECT(I2C_MASTER_BASE, TFR_CMD_FIFO)) != 0);
    // Wait for FIFO to be empty
    while ((0xF & IORD_32DIRECT(I2C_MASTER_BASE, RX_DATA_FIFO)) == 0);

    return IORD_32DIRECT(I2C_MASTER_BASE, RX_DATA);
}


byte get_single_slave_reg(byte adr, byte reg)
{
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, (adr<<1));
    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, STOP|reg);
    while ((0xF & IORD_32DIRECT(I2C_MASTER_BASE, TFR_CMD_FIFO)) != 0);

    IOWR_32DIRECT(I2C_MASTER_BASE, TFR_CMD, STOP|(adr<<1)|READ);
    while ((0xF & IORD_32DIRECT(I2C_MASTER_BASE, TFR_CMD_FIFO)) != 0);

    return IORD_32DIRECT(I2C_MASTER_BASE, RX_DATA);
}
