#include "Arduino.h"
#include "Potentiometer.h"
Potentiometer::Potentiometer(int _pin){
  pin = _pin;
}
int Potentiometer::getValue(){
  return analogRead(pin);
}