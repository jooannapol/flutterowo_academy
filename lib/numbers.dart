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
  for (int i = 0; i < enteredNumbers.length; i++) { //i = 0
    if (int.parse(enteredNumbers[i]) % 2 ==
        0) { //enterNumbers[0] = '4' (-> 4) 4%2 = 0 tzn ze true
      evenNumbers += enteredNumbers[i]; //evenNumbers = 4
    } else {
      oddNumbers += enteredNumbers[i]; //oddNumbers = 3, oddNumbers = 5
    }
  }

  //printing list of even numbers separated with semicolon:
  stdout.write('Even numbers: ');
  for (int i = 0; i < evenNumbers.length; i++) {
    if (i < evenNumbers.length - 1) {
      stdout.write('${evenNumbers[i]},');
    } else {
      stdout.writeln(evenNumbers[i]);
    }
  }

  //printing list of odd numbers separated with semicolon:
  stdout.write('Odd numbers: ');
  for (int i = 0; i < oddNumbers.length; i++) {
    if (i < oddNumbers.length - 1) {
      stdout.write('${oddNumbers[i]},');
    } else {
      stdout.writeln(oddNumbers[i]);
    }
  }

  //printing sum of the even numbers:
  stdout.write('Sum of even numbers: ');
  int evenSum = 0;
  for (int i = 0; i < evenNumbers.length; i++) {
    if (i < evenNumbers.length - 1) {
      stdout.write('${evenNumbers[i]}+');
    } else {
      stdout.write('${evenNumbers[i]}=');
    }
    int value = int.parse(evenNumbers[i]);
    evenSum += value;
  }
  stdout.writeln(evenSum);

  // printing sum of the odd numbers:
  stdout.write('Sum of odd numbers: ');
  int oddSum = 0;
  for (int i = 0; i < oddNumbers.length; i++) {
    if (i < oddNumbers.length - 1) {
      stdout.write('${oddNumbers[i]}+');
    } else {
      stdout.write('${oddNumbers[i]}=');
    }
    int value = int.parse(oddNumbers[i]);
    oddSum += value;
  }
  stdout.writeln(oddSum);
}
