/*
Button.h - ���������� ��� �������� ��������� �������� ��������� ������
 � �������� ������ ����������� ������������ ���������
 
� ������������ �������� ������ ��������� ���������� ���� �� �������:
    void  scanState();    // ����� �������� �������� ����������� ��������� �������
    void  filterAvarage(); // ����� ���������� ������� �� �������� ��������
 
� ���������� ����������� ��������:
 
 ��� ������ scanState():
 - ��� ������� ������ flagPress= true
 - ��� ������� ������ flagPress= false
 - ��� ������� �� ������ flagClick= true

 ��� ������ filterAvarage() :
 - ��� ������� ������� ������ flagPress= true
 - ��� ������� �������� ������ flagPress= false
 - ��� ��������� ��������� � �������� �� ������ flagClick= true

������ ���� Button ��� �������� ����� ���������:
 - ����� ������, � �������� ���������� ������ ��� ������
 - ����� ��������� ������� (���������� �� ������ ������ ������ scanState() ��� filterAvarage()

 Button button1(12, 15);  // �������� ������� ��� ������, ������������ � 12 ������
 � �������� ���������� 30 �� (��� ����� 2 ��)

 ���������� ����������� ��������� ��������
 http://mypractic.ru/urok-8-cifrovaya-filtraciya-signalov-v-programmax-dlya-arduino.html
*/

#include "Arduino.h"
#include "Button.h"
// ����� ���������� ������� �� �������� ��������
// ��� ������� ������� ������ flagPress= true
// ��� ������� �������� ������ flagPress= false
// ��� ��������� ��������� � �������� �� ������ flagClick= true
void Button::filterAvarage() {

 if ( flagPress != digitalRead(_pin) ) {
     //  ��������� ������ �������� �������
     if ( _buttonCount != 0 ) _buttonCount--; // ������� ������������� - 1 � ������������ �� 0
  }
  else {
     // ��������� ������ ����������
     _buttonCount++;   // +1 � �������� �������������

     if ( _buttonCount >= _timeButton ) {
      // ��������� ������� �������� ������ _timeButton
      flagPress= ! flagPress; // �������� �������� ���������
     _buttonCount= 0;  // ����� �������� �������������

      if ( flagPress == true ) flagClick= true; // ������� ����� ������      
     }   
  }
}
// ����� �������� �������� ����������� ��������� �������
// ��� ������� ������ flagPress= true
// ��� ������� ������ flagPress= false
// ��� ������� �� ������ flagClick= true
void Button::scanState() {

 if ( flagPress != digitalRead(_pin) ) {
     // ������� flagPress = �������� ��������� ������
     // (�������� �.�. �������� ��������� ������ LOW)
     // �.�. ��������� ������ �������� �������
     _buttonCount= 0;  // ����� �������� ������������� ��������� ������
  }
  else {
     // ������� flagPress �� = �������� ��������� ������
     // ��������� ������ ����������
     _buttonCount++;   // +1 � �������� ��������� ������

     if ( _buttonCount >= _timeButton ) {
      // ��������� ������ �� �������� � ������� ��������� �������
      // ��������� ������ ����� ����������
      flagPress= ! flagPress; // �������� �������� ���������
     _buttonCount= 0;  // ����� �������� ������������� ��������� ������

      if ( flagPress == true ) flagClick= true; // ������� ������ ������ �� �������     
     }   
  }
}
// ����� ��������� ������ ������ � ������� �������������
void Button::setPinTime(byte pin, byte timeButton)  {

  _pin= pin;
  _timeButton= timeButton;
  pinMode(_pin, INPUT_PULLUP);  // ���������� ����� ��� ����
}

// �������� ������������ ������ Button
Button::Button(byte pin, byte timeButton) {

  _pin= pin;
  _timeButton= timeButton;
  pinMode(_pin, INPUT_PULLUP);  // ���������� ����� ��� ����
}