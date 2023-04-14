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

  print('Enter numbers');
  String enteredNumbers = stdin.readLineSync() ?? '';
  String evenNumbers = '';
  String oddNumbers = '';
  for (int i = 0; i < enteredNumbers.length; i++) {
    //i = 0
    if (int.parse(enteredNumbers[i]) % 2 == 0) {
      //enterNumbers[0] = '4' (-> 4) 4%2 = 0 tzn ze true
      evenNumbers += enteredNumbers[i]; //evenNumbers = 4
    } else {
      oddNumbers += enteredNumbers[i]; //oddNumbers = 3, oddNumbers = 5
    }
  }

  void printListOfNumbers(String numbers) {
    for (int i = 0; i < numbers.length; i++) {
      if (i < numbers.length - 1) {
        stdout.write('${numbers[i]},');
      } else {
        stdout.writeln(numbers[i]);
      }
    }
  }

  void printSumOfNumbers(String numbers) {
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

  stdout.write('Even numbers: ');
  printListOfNumbers(evenNumbers);
  stdout.write('Odd numbers: ');
  printListOfNumbers(oddNumbers);
  stdout.write('Sum of even numbers: ');
  printSumOfNumbers(evenNumbers);
  stdout.write('Sum of odd numbers: ');
  printSumOfNumbers(oddNumbers);
}
