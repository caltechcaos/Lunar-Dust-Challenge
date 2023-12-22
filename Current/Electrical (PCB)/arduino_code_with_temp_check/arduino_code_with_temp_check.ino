int mosfet1 = 1; 
int mosfet2 = 2;
int mosfet3 = 3;
int mosfet4 = 4;
int toggleButtonPin = 9;  // toggle switch pin
int OnOffLED = 10; // status LED

int toggleButtonState = LOW; // low is off!

unsigned long sincestartTime = 0;

void setup() {
pinMode(toggleButtonPin, INPUT_PULLUP);
pinMode(mosfet1, OUTPUT);
pinMode(mosfet2, OUTPUT);
pinMode(mosfet3, OUTPUT);
pinMode(mosfet4, OUTPUT);
digitalWrite(mosfet1, LOW);
digitalWrite(mosfet2, LOW);
digitalWrite(mosfet3, LOW);
digitalWrite(mosfet4, LOW);
}

void loop() {
  toggleButtonState = digitalRead(toggleButtonPin);
  if (toggleButtonState == HIGH) {
    sincestartTime = millis();
    while (true) {
      toggleButtonState = digitalRead(toggleButtonPin); // check state of toggle switch
      if (toggleButtonState == LOW) { // if in 'off' position, no square wave
        break;
      }
      if (millis() - sincestartTime <= 10 * 60UL * 1000) { // if 'on' and less than 10 minutes since first turned on
        digitalWrite(OnOffLED, HIGH); // turn on status LED
        digitalWrite(mosfet1, HIGH);  // generate square wave
        delay(24);
        digitalWrite(mosfet4, LOW);
        delay(1);
        digitalWrite(mosfet2, HIGH);
        delay(24);
        digitalWrite(mosfet1, LOW);
        delay(1);
        digitalWrite(mosfet3, HIGH);
        delay(24);
        digitalWrite(mosfet2, LOW);
        delay(1);
        digitalWrite(mosfet4, HIGH);
        delay(24);
        digitalWrite(mosfet3, LOW);
        delay(1);
      }
      else {
        digitalWrite(OnOffLED, LOW); // if 'on' and more than 10 minutes, no square wave
        digitalWrite(mosfet1, LOW);
        digitalWrite(mosfet2, LOW);
        digitalWrite(mosfet3, LOW);
        digitalWrite(mosfet4, LOW); 
      }
    }
  }
  digitalWrite(OnOffLED, LOW); // default is no square wave (signals off)
  digitalWrite(mosfet1, LOW);
  digitalWrite(mosfet2, LOW);
  digitalWrite(mosfet3, LOW);
  digitalWrite(mosfet4, LOW);
}


#include <Adafruit_MAX31865.h>

// Use software SPI: CS, DI, DO, CLK
Adafruit_MAX31865 thermo = Adafruit_MAX31865(10, 11, 12, 13);
// use hardware SPI, just pass in the CS pin

// The value of the Rref resistor. Use 4300 for PT100 and 4300.0 for PT1000 DOCUMENATION WAS WRONGGG
#define RREF      430
// The 'nominal' 0-degrees-C resistance of the sensor
// 100.0 for PT100, 1000.0 for PT1000
#define RNOMINAL  100.0 

float tempTime;
float tempFilt;
float temp;

void setup() {
  Serial.begin(115200);

  thermo.begin(MAX31865_2WIRE);  // set to 2WIRE or 4WIRE as necessary
}


void loop() {
  uint16_t rtd = thermo.readRTD();

  tempTime = millis();

  float ratio = rtd;
  ratio /= 32768;
  temp = thermo.temperature(RNOMINAL, RREF);
  
  Serial.print(tempTime/1000);
  Serial.print(",");
  Serial.println(temp);

  delay(100);
}
