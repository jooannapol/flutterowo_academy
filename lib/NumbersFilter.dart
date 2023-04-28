import 'dart:io';

class NumbersFilter {
  String enteredNumbers;
  String evenNumbers = '';
  String oddNumbers = '';

  NumbersFilter({required this.enteredNumbers});


  void getEvenNumbers() {
    for (int i = 0; i < enteredNumbers.length; i++) {
      if (isEven(i)) {
        evenNumbers += enteredNumbers[i];
      }
    }
  }

  void getOddNumbers() {
    for (int i = 0; i < enteredNumbers.length; i++) {
      if (!isEven(i)) {
        oddNumbers += enteredNumbers[i];
      }
    }
  }

  bool isEven(int index) =>
      int.parse(enteredNumbers[index]) % 2 == 0;
}

