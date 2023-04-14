import 'dart:io';

void main() {
  /*
  1. Pobrać liczbę od użytkownika DONE
  2. Pobrac dlugosc ciagu przeslanego przez uzytkownika DONE
  3. Na podstawie dlugosci sprawdzanie w petli czy dana cyfra jest parzysta i przypisać ją do zbioru liczb parzystych lub nie
  4. Wydrukować liczby parzyste i niepatrzyste
  5. wypisać parzyste poprzedzielane + i na koncu = i potem suma
  6. i to samo z nieparzystymi
   */

  String enteredNumbers = collectNumber();
  String evenNumbers = '';
  String oddNumbers = '';
  for (int i = 0; i < enteredNumbers.length; i++) {
    //i = 0
    if (isEven(enteredNumbers[i])) {
      //enterNumbers[0] = '4' (-> 4) 4%2 = 0 tzn ze true
      evenNumbers += enteredNumbers[i]; //evenNumbers = 4
    } else {
      oddNumbers += enteredNumbers[i]; //oddNumbers = 3, oddNumbers = 5
    }
  }

  printListOfNumbers(message: 'Even numbers', numbers: evenNumbers,);
  printListOfNumbers(message: 'Odd numbers', numbers: oddNumbers,);
  //printSumOfNumbers('Sum of even numbers: ', evenNumbers);
  //printSumOfNumbers('Sum of odd numbers: ', oddNumbers);
}

String collectNumber() {
  stdout.writeln('Enter numbers');
  String enteredNumbers = stdin.readLineSync() ?? '';
  return enteredNumbers;
}

void printListOfNumbers({String message = ' ', required String numbers}) {
  stdout.write(message);
  for (int i = 0; i < numbers.length; i++) {
    if (i < numbers.length - 1) {
      stdout.write('${numbers[i]},');
    } else {
      stdout.writeln(numbers[i]);
    }
  }
}

bool isEven(String number){
  bool result = int.parse(number) % 2 == 0;
  return  result;

}

void printSumOfNumbers({String message = ' ', required String numbers}) {
  stdout.write(message);
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (i < numbers.length - 1) {
      stdout.write('${numbers[i]}+');
    } else {
      stdout.write('${numbers[i]}=');
    }
    int value = int.parse(numbers[i]);
    sum += value;
  }
  return stdout.writeln(sum);
}
