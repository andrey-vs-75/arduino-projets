/* Программа scetch_5_1 урока 5
   Зажигает светодиод (вывод 13) при нажатии кнопки (вывод 12) */
 
boolean buttonState;   // создаем глобальную переменную buttonState
   
 void setup() {
  pinMode(13, OUTPUT);        // определяем вывод 13 (светодиод) как выход
  pinMode(12, INPUT_PULLUP);  // определяем вывод 12 (кнопка) как вход
}

//  бесконечный цикл
void loop() {
  buttonState = digitalRead(12);  // считываем состояние 12 входа (кнопки) и записываем в buttonState
  buttonState = ! buttonState;    // инверсия переменной buttonState
  digitalWrite(13, buttonState);  // записываем состояние из buttonState на выход 13 (светодиод)
}
