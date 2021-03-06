// sketch_10_1 урока 10
// Нажатие на кнопку меняет состояние светодиода

#include <MsTimer2.h>
#include <Button.h>

#define LED_1_PIN 13     // светодиод подключен к выводу 13
#define BUTTON_1_PIN 12  // кнопка подключена к выводу 12

Button button1(BUTTON_1_PIN, 15);  // создание объекта - кнопка

void setup() {
  pinMode(LED_1_PIN, OUTPUT);      // определяем вывод светодиода как выход
  MsTimer2::set(2, timerInterupt); // задаем период прерывания по таймеру 2 мс
  MsTimer2::start();              // разрешаем прерывание по таймеру
}

void loop() {

// управление светодиодом
  if ( button1.flagClick == true ) {
    // был клик кнопки
    button1.flagClick= false;         // сброс признака
    digitalWrite(LED_1_PIN, ! digitalRead(LED_1_PIN));  // инверсия состояния светодиода
   
  }   
}

// обработчик прерывания
void  timerInterupt() {
  button1.scanState();  // вызов метода ожидания стабильного состояния для кнопки 
}
