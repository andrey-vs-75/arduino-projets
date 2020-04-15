/*  Программа sketch_7_1 урока 7
 *  Каждое нажатие кнопки меняет состояние светодиода */

#define LED_PIN 13     // светодиод подключен к выводу 13
#define BUTTON_PIN 12  // кнопка подключена к выводу 12

// Описание класса обработки сигналов кнопок
class Button {
  public:
    boolean flagPress;    // признак кнопка сейчас нажата
    boolean flagClick;    // признак кнопка была нажата (клик)
    void scanState();     // метод проверки состояние сигнала
    void setPinTime(byte pin, byte timeButton); // метод установки номера вывода и времени (числа) подтверждения

  private:
    byte  _buttonCount;    // счетчик подтверждений стабильного состояния  
    byte  _timeButton;      // время подтверждения состояния кнопки
    byte  _pin;             // номер вывода
};

boolean ledState;         // переменная состояния светодиода

Button button1;   // создание объекта типа Button с именем button1
  
void setup() {
  pinMode(LED_PIN, OUTPUT);           // определяем вывод 13 (светодиод) как выход
button1.setPinTime(BUTTON_PIN, 15); // вызов метода установки объекта button1 с параметрами: номер вывода 12, число подтверждений 15
}

// бесконечный цикл с периодом 2 мс
void loop() {

  button1.scanState();  // вызов метода сканирования сигнала кнопки
 
  // блок управления светодиодом
  if ( button1.flagClick == true ) {
    // было нажатие кнопки
    button1.flagClick= false;         // сброс признака клика
    ledState= ! ledState;             // инверсия состояния светодиода
    digitalWrite(LED_PIN, ledState);  // вывод состояния светодиода   
  }

  delay(2);  // задержка на 2 мс
}

// метод проверки состояния кнопки
// flagPress= true  - нажата
//  flagPress= false - отжата
//  flagClick= true - была нажата (клик)
void Button::scanState() {

 if ( flagPress == (! digitalRead(_pin)) ) {
     // состояние сигнала осталось прежним
     _buttonCount= 0;  // сброс счетчика состояния сигнала
  }
  else {
     // состояние сигнала изменилось
     _buttonCount++;   // +1 к счетчику состояния сигнала

     if ( _buttonCount >= _timeButton ) {
      // состояние сигнала не менялось заданное время
      // состояние сигнала стало устойчивым
      flagPress= ! flagPress; // инверсия признака состояния
      _buttonCount= 0;  // сброс счетчика состояния сигнала

      if ( flagPress == true ) flagClick= true; // признак клика на нажатие     
     }   
  }
}

// метод установки номера вывода и времени подтверждения
void Button::setPinTime(byte pin, byte timeButton)  {

  _pin= pin;
  _timeButton= timeButton;
  pinMode(_pin, INPUT_PULLUP);  // определяем вывод как вход
}
