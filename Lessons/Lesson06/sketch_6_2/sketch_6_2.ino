/*  Программа sketch_6_2 урока 6
 *  На каждое нажатие кнопки инвертирует состояние светодиода */

#define LED_PIN 13     // номер вывода светодиода равен 13
#define BUTTON_PIN 12  // номер вывода кнопки равен 12

// переменные и константы для обработки сигнала кнопки
boolean flagPress= false;    // признак кнопка в нажатом состоянии
boolean flagClick= false;    // признак нажатия кнопки (фронт)
byte  buttonCount= 0;        // счетчик подтверждений состояния кнопки  
#define TIME_BUTTON 12       // время устойчивого состояния кнопки (* 2 мс) 

boolean ledState;            // переменная состояния светодиода
  
void setup() {
  pinMode(LED_PIN, OUTPUT);        // определяем вывод 13 (светодиод) как выход
  pinMode(BUTTON_PIN, INPUT_PULLUP);  // определяем вывод 12 (кнопка) как вход
}

// бесконечный цикл с периодом 2 мс
void loop() {

/* блок обработки сигнала кнопки
 * при нажатой кнопке flagPress= true
 * при отжатой кнопке flagPress= false
 * при нажатии на кнопку flagClick= true */

  if ( flagPress == (! digitalRead(BUTTON_PIN)) ) {
     // признак flagPress = текущему состоянию кнопки
     // (инверсия т.к. активное состояние кнопки LOW)
     // т.е. состояние кнопки осталось прежним
     buttonCount= 0;  // сброс счетчика подтверждений состояния кнопки
  }
  else {
     // признак flagPress не = текущему состоянию кнопки
     // состояние кнопки изменилось
     buttonCount++;   // +1 к счетчику состояния кнопки

     if ( buttonCount >= TIME_BUTTON ) {
      // состояние кнопки не мянялось в течение заданного времени
      // состояние кнопки стало устойчивым
      flagPress= ! flagPress; // инверсия признака состояния
buttonCount= 0;  // сброс счетчика подтверждений состояния кнопки

      if ( flagPress == true ) flagClick= true; // признак фронта кнопки на нажатие     
     }   
  }

 
  // блок управления светодиодом
  if ( flagClick == true ) {
    // было нажатие кнопки
    flagClick= false;       // сброс признака фронта кнопки
    ledState= ! ledState;   // инверсия состояние светодиода
    digitalWrite(LED_PIN, ledState);  // вывод состояния светодиода   
  }

  delay(2);  // задержка на 2 мс
}
