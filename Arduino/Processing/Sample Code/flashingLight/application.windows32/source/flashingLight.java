import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.serial.*; 
import cc.arduino.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class flashingLight extends PApplet {

/*

Flashing Light!
HPH Knowledgebase
Fluvio L Lobo Fenoglietto

This processing script has been built as an example for Arduino control using Processing.
The algorithm commands the difital pins to turn an LED light on and off with a pre-defined delay.

*/

// Importing Libraries



// Variables
Arduino arduino;
int comPort = 1; 

// Set-Up Loop
public void setup() {

  // Prints out the available serial ports
  println(Arduino.list());
  
  // Selects the COM Port taken by the Arduino
  arduino = new Arduino(this, Arduino.list()[comPort], 57600);
  
} // End of void-setup loop

public void draw() {
  
  arduino.digitalWrite(9, Arduino.HIGH);
  delay(1000); // Delay in miliseconds
  arduino.digitalWrite(9, Arduino.LOW);
  delay(1000); // Delay in miliseconds
  
} // End of void-draw loop
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "flashingLight" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
