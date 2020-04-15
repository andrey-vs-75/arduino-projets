/*  Программа sketch_8_1 урока 8
 *  К плате подключены 2 кнопки и светодиод
 *  Каждое нажатие кнопки 1 меняет состояние светодиода на плате Ардуино
 *  Каждое нажатие кнопки 2 меняет состояние светодиода на макетной плате */

#define LED_1_PIN 13     // светодиод 1 подключен к выводу 13
#define BUTTON_1_PIN 12  // кнопка 1 подключена к выводу 12
#define BUTTON_2_PIN 11  // кнопка 2 подключена к выводу 11
#define LED_2_PIN 10     // светодиод 2 подключен к выводу 10

// Описание класса обработки сигналов кнопок
class Button {
  public:
    Button(byte pin, byte timeButton);  // конструктор  
   boolean flagPress;    // признак кнопка в нажатом состоянии
    boolean flagClick;    // признак нажатия кнопки (клик)
    void  scanState();    // метод проверки состояние сигнала
    void  filterAvarage(); // метод фильтрации сигнала по среднему значению
    void setPinTime(byte pin, byte timeButton); // метод установки номера вывода и времени (числа) подтверждения
  private:
    byte  _buttonCount;    // счетчик подтверждений состояния кнопки  
    byte _timeButton;      // время подтверждения состояния кнопки
    byte _pin;             // номер вывода кнопки
};

boolean ledState1;         // переменная состояния светодиода1
boolean ledState2;         // переменная состояния светодиода2

Button button1(BUTTON_1_PIN, 15);  // создание объекта для кнопки1
Button button2(BUTTON_2_PIN, 15);  // создание объекта для кнопки2
  
void setup() {
  pinMode(LED_1_PIN, OUTPUT);           // определяем вывод светодиода1 как выход
  pinMode(LED_2_PIN, OUTPUT);           // определяем вывод светодиода2 как выход
}

// бесконечный цикл с периодом 2 мс
void loop() {

  button1.filterAvarage();  // вызов метода фильтрации по среднему сигнала кнопки 1
  button2.scanState();  // вызов метода сканирования состояния сигнала кнопки 2

 
  // блок управления светодиодом1
  if ( button1.flagClick == true ) {
    // кнопка была нажата
   button1.flagClick= false;         // сброс признака клика кнопки
    ledState1= ! ledState1;             // изменение состояние светодиода
    digitalWrite(LED_1_PIN, ledState1);  // вывод состояния светодиода1   
  }

  // блок управления светодиодом2
  if ( button2.flagClick == true ) {
    // кнопка была нажата
    button2.flagClick= false;         // сброс признака клика кнопки
    ledState2= ! ledState2;             // изменение состояние светодиода
    digitalWrite(LED_2_PIN, ledState2);  // вывод состояния светодиода2   
  }

/*
    // проверка признака кнопка нажата
    digitalWrite(LED_1_PIN, button1.flagPress);
    digitalWrite(LED_2_PIN, button2.flagPress);
*/

  delay(2);  // задержка на 2 мс
}

// метод фильтрации сигнала по среднему значению
// при сигнале низкого уровня flagPress= true
// при сигнале высокого уровня flagPress= false
// при изменении состояния с высокого на низкий flagClick= true
void Button::filterAvarage() {

 if ( flagPress != digitalRead(_pin) ) {
     //  состояние кнопки осталось прежним
     if ( _buttonCount != 0 ) _buttonCount--; // счетчик подтверждений - 1 с ограничением на 0
  }
  else {
     // состояние кнопки изменилось
     _buttonCount++;   // +1 к счетчику подтверждений

     if ( _buttonCount >= _timeButton ) {
      // состояние сигнала достигло порога _timeButton
      flagPress= ! flagPress; // инверсия признака состояния
     _buttonCount= 0;  // сброс счетчика подтверждений

      if ( flagPress == true ) flagClick= true; // признак клика кнопки      
     }   
  }
}

// метод проверки состояния кнопки
// при нажатой кнопке flagPress= true
// при отжатой кнопке flagPress= false
// при нажатии на кнопку flagClick= true
void Button::scanState() {

 if ( flagPress != digitalRead(_pin) ) {
     //  состояние кнопки осталось прежним
     _buttonCount= 0;  // сброс счетчика подтверждений
  }
  else {
     // состояние кнопки изменилось
     _buttonCount++;   // +1 к счетчику подтверждений

     if ( _buttonCount >= _timeButton ) {
      // состояние кнопки не мянялось в течение времени _timeButton
      // состояние кнопки стало устойчивым
      flagPress= ! flagPress; // инверсия признака состояния
     _buttonCount= 0;  // сброс счетчика подтверждений

      if ( flagPress == true ) flagClick= true; // признак клика кнопки      
     }   
  }
}
// метод установки номера вывода и времени подтверждения
void Button::setPinTime(byte pin, byte timeButton)  {

  _pin= pin;
  _timeButton= timeButton;
  pinMode(_pin, INPUT_PULLUP);  // определяем вывод кнопки как вход
}

// конструктор класса Button
Button::Button(byte pin, byte timeButton) {

  _pin= pin;
  _timeButton= timeButton;
  pinMode(_pin, INPUT_PULLUP);  // определяем вывод кнопки как вход
}
