#include <Keyboard.h>

int LED_PIN = LED_BUILTIN;
int BUTTON_PIN = 2;

void setup() {
  pinMode(BUTTON_PIN, INPUT_PULLUP);
  Keyboard.begin();
  //Serial.begin(9600);
}

int lastValues[10];

int read() {
  int newState = digitalRead(BUTTON_PIN);
  int highValues = 0;

  if (newState == HIGH) {
    highValues = 1;
  }
  
  for (int i = 8; i >= 0; i--) {
    if (lastValues[i] == HIGH) {
      highValues++;
    }
    lastValues[i+1] = lastValues[i];
  }
  lastValues[0] = newState;
  //Serial.println(highValues);
  return highValues;
}

int buttonState = LOW;

void setButton(int state) {
  if (state != buttonState) {
    buttonState = state;
    if (state == HIGH) {
      digitalWrite(LED_PIN,HIGH);
    Keyboard.press(KEY_LEFT_CTRL);
    } else {
      digitalWrite(LED_PIN, LOW);
      Keyboard.releaseAll();
    }
    
  }
}

void loop() {

  if (read() >= 5) {
    setButton(HIGH);
  } else {
    setButton(LOW);
  }

  delay(5);
}
