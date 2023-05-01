import 'dart:io';

class NumbersOperations {
  String numbers;

  NumbersOperations({required this.numbers});

  String getEvenNumbers() {
    String evenNumbers = '';
    for (int i = 0; i < numbers.length; i++) {
      if (isEven(i)) {
        evenNumbers += numbers[i];
      }
    }
    return evenNumbers;
  }

  String getOddNumbers() {
    String oddNumbers = '';
    for (int i = 0; i < numbers.length; i++) {
      if (!isEven(i)) {
        oddNumbers += numbers[i];
      }
    }
    return oddNumbers;
  }

  bool isEven(int index) => int.parse(numbers[index]) % 2 == 0;

  int getSum(String numbers) {
    int sum = 0;
    for (int i = 0; i < numbers.length; i++) {
      int value = int.parse(numbers[i]);
      sum += value;
    }
    return sum;
  }

  void printListOfNumbers({
    String message = ' ',
    required String numbers,
    String? separator = ',',
    int? extra,
  }) {
    stdout.write(message);
    for (int i = 0; i < numbers.length; i++) {
      if (i < numbers.length - 1) {
        stdout.write('${numbers[i]}$separator');
      } else {
        stdout.write(numbers[i]);
      }
    }
    if (extra != null) {
      stdout.write('=$extra');
    }
    stdout.writeln();
  }
}
