import 'dart:io';

void main() {
  /*
  1. Pobrać liczbę od użytkownika DONE
  2. Pobrac dlugosc ciagu przeslanego przez uzytkownika
  3. Na podstawie dlugosci sprawdzanie w petli czy dana cyfra jest parzysta
  3B. Sprawdzic po kolei czy jest parzysta czy nie i je oznaczyć
  4. wypisać oznaczone jako parzyste i nie
  5. wypisać parzyste poprzedzielane + i na koncu = i potem suma
  6. i to samo z nieparzystymi
   */

  print('Enter numbers');
  String enteredNumbers = stdin.readLineSync() ?? '';
  String evenNumbers = '';
  String oddNumbers = '';
  for (int i = 0; i < enteredNumbers.length; i++) { //i = 0
    if (int.parse(enteredNumbers[i]) % 2 == 0) { //enterNumbers[0] = '4' (-> 4) 4%2 = 0 tzn ze true
      evenNumbers += enteredNumbers[i];           //evenNumbers = 4
    } else {
      oddNumbers += enteredNumbers[i];           //oddNumbers = 3, oddNumbers = 5
    }
  }
  print(evenNumbers);
  print(oddNumbers);
}
