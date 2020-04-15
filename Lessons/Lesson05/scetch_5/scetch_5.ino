/* Программа урока 5
   Зажигает светодиод (вывод 13) при нажатии кнопки (вывод 12) */
  
#define LED_PIN 13     // номер вывода светодиода равен 13
#define BUTTON_PIN 12  // номер вывода кнопки равен 12

void setup() {
  pinMode(LED_PIN, OUTPUT);    // определяем вывод 13 (светодиод) как выход
  pinMode(BUTTON_PIN, INPUT_PULLUP);  // определяем вывод 12 (кнопка) как вход
}

//  бесконечный цикл
void loop() {
  digitalWrite(LED_PIN, ! digitalRead(BUTTON_PIN) );
}
