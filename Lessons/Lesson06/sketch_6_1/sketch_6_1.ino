/*  Программа sketch_6_1 урока 6
 *  На каждое нажатие кнопки инвертирует состояние светодиода
 *  Работает неправильно из-за дребезга контактов */
  
#define LED_PIN 13     // номер вывода светодиода равен 13
#define BUTTON_PIN 12  // номер вывода кнопки равен 12

boolean buttonState;      // состояние кнопки
boolean buttonPrevState;  // предыдущее состояние кнопки
boolean ledState;         // состояние светодиода

void setup() {
  pinMode(LED_PIN, OUTPUT);        // определяем вывод 13 (светодиод) как выход
  pinMode(BUTTON_PIN, INPUT_PULLUP);  // определяем вывод 12 (кнопка) как вход
}

void loop() {

  buttonState= digitalRead(BUTTON_PIN); // записываем состояние кнопки в переменную buttonState
 
  if ( (buttonPrevState == HIGH) && (buttonState == LOW) ) {
   
    // предыдущее состояние кнопки - отжата, а текущее - нажата
    ledState= ! ledState;             // инверсия состояния светодиода
    digitalWrite(LED_PIN, ledState);  // запись состояния светодиода из переменной нв выход   
  }
 
  buttonPrevState= buttonState;         // предыдущее состояние кнопки = текущему
}
