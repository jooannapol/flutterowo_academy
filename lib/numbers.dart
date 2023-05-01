import 'dart:io';

import 'NumbersOperations.dart';

void main() {
  String enteredNumbers = getNumber();
  NumbersOperations numbersOperations =
      NumbersOperations(numbers: enteredNumbers);
  String evenNumbers = numbersOperations.getEvenNumbers();
  String oddNumbers = numbersOperations.getOddNumbers();
  numbersOperations.printListOfNumbers(
    message: 'Even numbers: ',
    numbers: evenNumbers,
    separator: ', ',
  );
  numbersOperations.printListOfNumbers(
    message: 'Odd numbers: ',
    numbers: oddNumbers,
    separator: ', ',
  );
  numbersOperations.printListOfNumbers(
      message: 'Sum of even numbers: ',
      numbers: evenNumbers,
      separator: '+',
      extra: numbersOperations.getSum(evenNumbers));
  numbersOperations.printListOfNumbers(
      message: 'Sum of odd numbers: ',
      numbers: oddNumbers,
      separator: '+',
      extra: numbersOperations.getSum(oddNumbers));
}

String getNumber() {
  stdout.writeln('Enter numbers');
  String enteredNumbers = stdin.readLineSync() ?? '';
  return enteredNumbers;
}
