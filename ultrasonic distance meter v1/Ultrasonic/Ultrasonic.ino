#include <lcd.h>
lcd Lcd;  //define a Lcd class instance
int inputPin=5; // define ultrasonic signal receiver pin ECHO to D5 
int outputPin=4; // define ultrasonic signal transmitter pin TRIG to D4
 void setup()
{
pinMode(inputPin, INPUT); 
pinMode(outputPin, OUTPUT);
Lcd.Init(); //initialize
Lcd.Clear();  //clear
}
void loop()
{
Lcd.Clear();
digitalWrite(outputPin, LOW); delayMicroseconds(2);
digitalWrite(outputPin, HIGH); // Pulse for 10μ s to trigger ultrasonic detection
delayMicroseconds(10); 
digitalWrite(outputPin, LOW);
int distance = pulseIn(inputPin, HIGH); // Read receiver pulse time 
distance= distance/58; // Transform pulse time to distance 
Lcd.Cursor(0, 0); //Set the first row and the eighth column to display, same as below
Lcd.DisplayNum(distance); //Display distance
Lcd.Cursor(0, 4);
Lcd.Display("sm");
delay(1000);
}
