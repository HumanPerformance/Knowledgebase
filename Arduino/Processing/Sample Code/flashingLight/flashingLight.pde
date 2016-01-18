/*

Flashing Light!
HPH Knowledgebase
Fluvio L Lobo Fenoglietto

This processing script has been built as an example for Arduino control using Processing.
The algorithm commands the difital pins to turn an LED light on and off with a pre-defined delay.

*/

// Importing Libraries
import processing.serial.*;
import cc.arduino.*;

// Variables
Arduino arduino;
int comPort = 1; 

// Set-Up Loop
void setup() {

  // Prints out the available serial ports
  println(Arduino.list());
  
  // Selects the COM Port taken by the Arduino
  arduino = new Arduino(this, Arduino.list()[comPort], 57600);
  
} // End of void-setup loop

void draw() {
  
  arduino.digitalWrite(9, Arduino.HIGH);
  delay(1000); // Delay in miliseconds
  arduino.digitalWrite(9, Arduino.LOW);
  delay(1000); // Delay in miliseconds
  
} // End of void-draw loop