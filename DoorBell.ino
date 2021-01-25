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
const int low_voltage_pin = 9;
#define VDIV_R8       7000    // Value of R8 in the resistor divider network
#define VDIV_R7      10000    // Value of R7 in the resistor divider network
#define VREF             5    // Arduino reference voltage
#define PWR_IN(x) ( ( (float) (x) * VREF * ( VDIV_R8 + VDIV_R7 ) ) / ( 1024 * VDIV_R8 ) )
#define CALC_ADC(x) ( (x) * 1024 * ((VDIV_R8) / ( VDIV_R8 + VDIV_R7 ) ) / VREF )
#define VOLTAGE_MIN CALC_ADC( 8.3 ) 
const int read_adc_every = 50; // Reading the ADC every 500 ms
const int read_adc_number = 10; // the number of times adc is going to be readed
int adc_reading[ read_adc_number ];
int adc_count = 0;
static int adc_timer = 0;
int adc_total = 0;
int adc_value = 0;
bool low_voltage_is_active = false;
static uint8_t low_voltage_counter = 0;


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
  // Resets to adc_reading's to 0
  for( int i = 0; i < read_adc_number; i++ )
  {
    adc_reading[ i ] = 0;
  }
}

void loop() {
  // First reading the buttons
  for( int i = 0; i < (int)button::END; i++ )
  {
     buttons[ i ]->loop();
  }

  // We are going to read the adc at an interval atleast read_adc_every
  if( (millis() - adc_timer ) > read_adc_every )
  {
    adc_timer = millis();
    // We are going to smooth out the adc over read_adc_number times. 
    adc_total -= adc_reading[ adc_count ];
    adc_reading[ adc_count ] = analogRead( pwr_mon_pin );
    total += adc_reading[ adc_count ];
    adc_count++;
    // Wrap adc_count around
    if( adc_count >= read_adc_number )
    {
      adc_count = 0;
    }
    // Calculate the average
    adc_value = adc_total / read_adc_number;

    Serial.print( "Power voltage: ");
    Serial.print( PWR_IN( adc_value ) );
    Serial.println(" V");

    // If the read value is equal or lower than VOLTAGE_MIN
    // the set low_voltage_is_active to true
    // and low_voltage_pin to output
    if( adc_value <= VOLTAGE_MIN )
    {
      Serial.println("Low voltage");
      low_voltage_is_active = true;

      pinMode(low_voltage_pin, OUTPUT);
      // TODO: Alert user 
    }

    // Here if the adc_value is more than the VOLTAGE_MIN and low_voltage_is_active is true
    // then we are going to low_voltage_pin to input and low_voltage_is_active to false
    if( adc_value > VOLTAGE_MIN && low_voltage_is_active == true)
    {
      pinMode(low_voltage_pin, INPUT);
      low_voltage_is_active = false;
    }

    // if low_voltage_is_active then we will use
    // low_voltage_counter to fade in out
    if( low_voltage_is_active == true )
    {
      low_voltage_counter += 5;
      if( low_voltage_counter > 255 )
      {
        low_voltage_counter = 10;
      }
      analogWrite( low_voltage_pin, low_voltage_counter );
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
