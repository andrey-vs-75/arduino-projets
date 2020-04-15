/*  Программа sketch_9_1 урока 9
 *  К плате Ардуино подключены 2 кнопки и светодиод
 *  Каждое нажатие кнопки 1 инвертирует состояние светодиода на плате Ардуино
 *  Каждое нажатие кнопки 2 инвертирует состояние светодиода на макетной плате */

#include <Button.h>

#define LED_1_PIN 13     // светодиод 1 подключен к выводу 13
#define BUTTON_1_PIN 12  // кнопка 1 подключена к выводу 12
#define BUTTON_2_PIN 11  // кнопка 2 подключена к выводу 11
#define LED_2_PIN 10     // светодиод 2 подключен к выводу 10

boolean ledState1;         // переменная светодиода 1
boolean ledState2;         // переменная светодиода 2

Button button1(BUTTON_1_PIN, 15);  // создание объекта для кнопки 1
Button button2(BUTTON_2_PIN, 15);  // создание объекта для кнопки 2
  
void setup() {
  pinMode(LED_1_PIN, OUTPUT);           // определяем выводы светодиодов как выходы
  pinMode(LED_2_PIN, OUTPUT);          
}

// цикл с периодом 2 мс
void loop() {

  button1.filterAvarage();  // вызов метода фильтрации по среднему для кнопки 1
  button2.scanState();  // вызов метода ожидания стабильного состояния для кнопки 2

 
  // блок управления светодиодом 1
  if ( button1.flagClick == true ) {
    // был клик кнопки
    button1.flagClick= false;         // сброс признака
    ledState1= ! ledState1;             // инверсия состояние светодиода
    digitalWrite(LED_1_PIN, ledState1);  // вывод состояния светодиода   
  }

  // блок управления светодиодом 2
  if ( button2.flagClick == true ) {
    // был клик кнопки
    button2.flagClick= false;         // сброс признака
    ledState2= ! ledState2;             // инверсия состояние светодиода
    digitalWrite(LED_2_PIN, ledState2);  // вывод состояния светодиода   
  }

  delay(2);  // задержка 2 мс
}
