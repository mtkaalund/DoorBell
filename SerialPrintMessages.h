#ifndef MTK_SERIALPRINTMESSAGES_H_
#define MTK_SERIALPRINTMESSAGES_H_

// Author: Michael Torp Kaalund
// File: SerialPrintMessages.h
// Description:
//      This file contains my common messages to the serial prompt.

#include <Arduino.h>
#include <DFRobotDFPlayerMini.h>

extern "C" {
    #include <avr/pgmspace.h>
}

namespace mtk {
    // We are going to put these in the flash memory instead of the RAM
    const char welcome_msg_0[] PROGMEM = "Welcome to DoorBell...";
    const char welcome_msg_1[] PROGMEM = " created by mtkaalund";
    const char welcome_msg_2[] PROGMEM = "Initializing...";
    const char welcome_msg_3[] PROGMEM = " (may take 3~5 seconds)";
    // welcome message table 
    const char *const welcome_table[] PROGMEM = {welcome_msg_0, welcome_msg_1, welcome_msg_2, welcome_msg_3};

    // DFPlayer failed to initialize messages
    const char dfplayer_failed_to_init_0[] PROGMEM = "DFPlayer failed to initialize";
    const char dfplayer_failed_to_init_1[] PROGMEM = " - Recheck the connection";
    const char dfplayer_failed_to_init_2[] PROGMEM = " - Reinsert SD Card";
    const char *const dfplayer_failed_to_init_table[] PROGMEM = {dfplayer_failed_to_init_0, dfplayer_failed_to_init_1, dfplayer_failed_to_init_2};

    // DFPlayer status messages
    const char dfplayer_status_0[] PROGMEM = "Time Out!";
    const char dfplayer_status_1[] PROGMEM = "Stack Wrong!";
    const char dfplayer_status_2[] PROGMEM = "Card Inserted!";
    const char dfplayer_status_3[] PROGMEM = "Card Removed!";
    const char dfplayer_status_4[] PROGMEM = "Card Online!";
    const char dfplayer_status_5[] PROGMEM = "USB Inserted!";
    const char dfplayer_status_6[] PROGMEM = "USB Removed!";
    const char dfplayer_status_7[] PROGMEM = " Play Finished!";
    const char dfplayer_status_8[] PROGMEM = "DFPlayerError:";
    const char *const dfplayer_status_table[] PROGMEM = {
        dfplayer_status_0, dfplayer_status_1, dfplayer_status_2,
        dfplayer_status_3, dfplayer_status_4, dfplayer_status_5,
        dfplayer_status_6, dfplayer_status_7, dfplayer_status_8
    };

    // DFPlayer error messages
    const char dfplayer_error_0[] PROGMEM = "Card not found";
    const char dfplayer_error_1[] PROGMEM = "Sleeping";
    const char dfplayer_error_2[] PROGMEM = "Get Wrong Stack";
    const char dfplayer_error_3[] PROGMEM = "Check Sum Not Match";
    const char dfplayer_error_4[] PROGMEM = "File Index Out of Bound";
    const char dfplayer_error_5[] PROGMEM = "Cannot Find File";
    const char dfplayer_error_6[] PROGMEM = "In Advertise";
    const char *const dfplayer_error_table[] PROGMEM = {
        dfplayer_error_0, dfplayer_error_1, dfplayer_error_2,
        dfplayer_error_3, dfplayer_error_4, dfplayer_error_5, dfplayer_error_6
    };

    void PrintWelcome()
    {
        char buffer[30];
        Serial.println();
        for( int i = 0; i < 4; i++) {
            strcpy_P( buffer, (char *)pgm_read_word(&(welcome_table[ i ])));
            Serial.println(buffer);
        }
    }

    void PrintDFPlayerFailedToInit()
    {
        char buffer[30];

        for( int i = 0; i < 3; i++ ) {
            strcpy_P( buffer, (char *)pgm_read_word(&(dfplayer_failed_to_init_table[ i ])));
            Serial.println(buffer);
        }
    }

    void DFPlayerPrintStatus( uint8_t type, int value )
    {
        char buffer[30];

        if( type == DFPlayerPlayFinished )
        {
            Serial.print("Number: ");
            Serial.print(value);
            Serial.print(" ");
        }

        strcpy_P( buffer, (char *)pgm_read_word(&(dfplayer_status_table[ type ])));
        if( type != DFPlayerError )
        {
            Serial.println( buffer );
        } else {
            Serial.print( buffer );
            strcpy_P( buffer, (char *)pgm_read_word(&(dfplayer_error_table[ value - 1 ])));
            Serial.println( buffer );
        }
    }
};

#endif