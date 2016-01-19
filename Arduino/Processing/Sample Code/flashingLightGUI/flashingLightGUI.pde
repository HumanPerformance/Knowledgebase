/*

Flashing LED from a standalone, graphical user interface (GUI)
HPH Knowledgebase
Fluvio L Lobo Fenoglietto

*/


// Importing Libraries
import processing.serial.*;
import cc.arduino.*;
import g4p_controls.*;


// Variables
Arduino arduino;
int ledPin = 9;
int comPort = 1;


public void setup(){
    
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  
  
  // Arduino Connection
  println(Arduino.list()); // Prints the list of COM Ports on the Processing Command Window
  arduino = new Arduino(this, Arduino.list()[comPort], 5760); // Selects the COM Port taken by the Arduino
                                                              // In this code, the user knows the COM Port of the Arduino beforehand

  
}

public void draw(){
  background(230);
  
  
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}