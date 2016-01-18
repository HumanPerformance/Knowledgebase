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
  
  // Arduino Connection
  
  
  
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
}

public void draw(){
  background(230);
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}