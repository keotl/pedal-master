#include <Keyboard.h>

// CONFIG

// Set button mapping here
const int BUTTONS[3] = {3,4,5};
const int KEYS[3] = {KEY_LEFT_CTRL, KEY_LEFT_ALT, KEY_LEFT_SHIFT};

// Set base polarity here for each pedal.
// Inverted pedals send 5V when open, 0V when closed.
// For pedals compatible with Yamaha keyboards, set to `true`.
// By default, leave to false.
const bool INVERTED[3] = {false,false,false};

// FIRMWARE
int buttonStates[3] = {0,0,0};
bool keyboardStates[3] = {false, false, false};

void incrementState(int i) {
  if (buttonStates[i] < 1) {
    buttonStates[i]++;
  }
}

void decrementState(int i) {
  if (buttonStates[i] > 0) {
    buttonStates[i]--;
  }
}

void readButton(int i) {
  if (digitalRead(BUTTONS[i]) == HIGH) {
    if (INVERTED[i]) {
      decrementState(i);
    } else {
      incrementState(i);
    }
  } else {
    if (INVERTED[i]) {
      incrementState(i);
    }
    else {
      decrementState(i);
    }
  }
}

void updateKeyboard() {
  for (int i = 0; i < 3; i++) {
    if (buttonStates[i] > 0 && !keyboardStates[i]) {
      keyboardStates[i] = true;
      Keyboard.press(KEYS[i]);
    } else if (buttonStates[i] < 1 && keyboardStates[i]) {
      keyboardStates[i] = false;
      Keyboard.release(KEYS[i]);
    }
  }
}

void setup() {
  Keyboard.begin();
  for (int i = 0; i < 3; i++) {
    pinMode(BUTTONS[i],INPUT);
  }
}

void loop() {
  for (int i = 0; i < 3; i++) {
    readButton(i);
  }
  updateKeyboard();
  delay(5);
}
