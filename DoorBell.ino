// Author: Michael Torp Kaalund 
// File: DoorBell.ino
// Description:
//  An over engineered doorbell solution using the DFPlayerMini board.
//  It has following buttons connected to the arduino pro mini as follows:
//    Doorbell    - pin 2
//    Volume up   - pin 3
//    Volume down - pin 4
//    Select      - pin 5
//    Next sound  - pin 6
//    Prev sound  - pin 7
// In order to compile you'll need the arduino enviroment and ezButton lib and DFRobotDFPlayerMini lib.
// https://arduinogetstarted.com/library/arduino-multiple-button-all-example
// https://wiki.dfrobot.com/DFPlayer_Mini_SKU_DFR0299

#include <Arduino.h>
#include <EEPROM.h>
#include <SoftwareSerial.h>
#include <DFRobotDFPlayerMini.h>
#include <ezButton.h>

#include "SerialPrintMessages.h"

  // Buttons ( using C++ enum class )
enum class button {
  DOORBELL,
  VOL_PLUS,
  VOL_MINUS,
  SELECT,
  NEXT,
  PREV,
  END
};

ezButton *buttons[ (int) button::END ] = {
  new ezButton(2),
  new ezButton(3),
  new ezButton(4),
  new ezButton(5),
  new ezButton(6),
  new ezButton(7)
};

typedef struct
{
  int saved_number;
  int volume;
} stats;

static stats ee_stats;
const int state_eeprom_address = 0;

static int max_files = 0;

// Our power monitor input pin
const int pwr_mon_pin = A0;
#define VDIV_R8       7000    // Value of R8 in the resistor divider network
#define VDIV_R7      10000    // Value of R7 in the resistor divider network
#define VREF             5    // Arduino reference voltage
#define PWR_IN(x) ( ( (float) (x) * VREF * ( VDIV_R8 + VDIV_R7 ) ) / ( 1024 * VDIV_R8 ) )
#define CALC_ADC(x) ( (x) * 1024 * ((VDIV_R8) / ( VDIV_R8 + VDIV_R7 ) ) / VREF )
#define VOLTAGE_MIN CALC_ADC( 8.3 ) 
const int read_adc_every = 500; // Reading the ADC every 500 ms
static int adc_timer = 0;
int adc_value;

// Setting for the DFPlayer Mini
SoftwareSerial dfplayer_serial( 10, 11 ); // RX, TX
DFRobotDFPlayerMini cDFPlayer;

void setup() {
  // Read EEPROM
  EEPROM.get( state_eeprom_address, ee_stats );
  
  dfplayer_serial.begin( 9600 );
  Serial.begin( 115200 );

  mtk::PrintWelcome();

  if( ! cDFPlayer.begin( dfplayer_serial ) ) 
  {
    mtk::PrintDFPlayerFailedToInit();
  }
  Serial.println(F("READY!"));

  // Reading the current maks count off files
  max_files = cDFPlayer.readFileCounts();
  // The saved filenumber is bigger that the
  // maximum availeble files. Then set it to the maximum
  if( ee_stats.saved_number > max_files ) 
    ee_stats.saved_number = max_files;

  if( ee_stats.saved_number < 0 )
    ee_stats.saved_number = 0;

  if( ee_stats.volume > 30 )
    ee_stats.volume = 30;

  if( ee_stats.volume < 0 )
    ee_stats.volume = 0;

  cDFPlayer.volume( ee_stats.volume );
  cDFPlayer.disableLoop();
  cDFPlayer.play( ee_stats.saved_number );

  Serial.print("Found : ");
  Serial.print( max_files );
  Serial.println(" files on the sd card");
  Serial.print("Saved number: ");
  Serial.print((int)ee_stats.saved_number);
  Serial.print(" Volume: ");
  Serial.println((int)ee_stats.volume);

  adc_timer = millis();
}

void loop() {
  // First reading the buttons
  for( int i = 0; i < (int)button::END; i++ )
  {
     buttons[ i ]->loop();
  }

  if( (millis() - adc_timer ) > read_adc_every )
  {
    adc_timer = millis();
    adc_value = analogRead( pwr_mon_pin );
    Serial.print( "Power voltage: ");
    Serial.print( PWR_IN( adc_value ) );
    Serial.println(" V");

    if( adc_value <= VOLTAGE_MIN )
    {
      Serial.println("Low voltage");
      // TODO: Alert user 
    }
  }

  if( buttons[ (int) button::DOORBELL ]->isPressed() )  
  {
    Serial.println("DOORBELL pressed");
    cDFPlayer.play( (int) ee_stats.saved_number ); 
  }

  if( buttons[ (int) button::VOL_PLUS ]->isPressed() )
  {
    Serial.print("VOL_PLUS pressed : ");
    if( ee_stats.volume < 30 )
    {
      cDFPlayer.volumeUp();
      ee_stats.volume++;      
    }
    Serial.println((int)ee_stats.volume);
  }

  if( buttons[ (int) button::VOL_MINUS ]->isPressed() )
  {
    Serial.print("VOL_MINUS pressed : ");
    if( ee_stats.volume > 0 ) {
      cDFPlayer.volumeDown();
      ee_stats.volume--;
    }
    Serial.println((int)ee_stats.volume);
  }

  if( buttons[ (int) button::SELECT ]->isPressed() )
  {
    Serial.println("SELECT pressed");
    // Here we are going to save ee_stats to EEPROM
    EEPROM.put( state_eeprom_address, ee_stats );
  }
  
  if( buttons[ (int) button::NEXT ]->isPressed() )
  {
    Serial.print("NEXT pressed : ");
    if( ee_stats.saved_number < max_files ) 
    {
      ee_stats.saved_number++;
      cDFPlayer.play( (int) ee_stats.saved_number );
    }
    Serial.println( (int) ee_stats.saved_number );
  }

  if( buttons[ (int) button::PREV ]->isPressed() )
  {
    Serial.println("PREV pressed : ");
    if( ee_stats.saved_number > 0 ) 
    {
      ee_stats.saved_number--;
      cDFPlayer.play( (int) ee_stats.saved_number );
    }
    Serial.println( (int) ee_stats.saved_number );
  }

  if( cDFPlayer.available() ) {
    mtk::DFPlayerPrintStatus( cDFPlayer.readType(), cDFPlayer.read() ); // Print the detail message from DFPlayer
  }
}
