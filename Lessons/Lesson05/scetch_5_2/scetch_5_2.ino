/* Программа scetch_5_2 урока 5
   Зажигает светодиод (вывод 13) при нажатии кнопки (вывод 12) */
  
void setup() {
  pinMode(13, OUTPUT);        // определяем вывод 13 (светодиод) как выход
  pinMode(12, INPUT_PULLUP);  // определяем вывод 12 (кнопка) как вход
}

//  бесконечный цикл
void loop() {
  if ( digitalRead(12) == LOW ) digitalWrite(13, HIGH);
  else digitalWrite(13, LOW);
}
