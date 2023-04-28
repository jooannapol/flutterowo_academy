import 'dart:io';

class NumbersOperations {
  String numbers = '';

}
  /*
  1. Pobrać liczbę od użytkownika DONE
  2. Pobrac dlugosc ciagu przeslanego przez uzytkownika DONE
  3. Na podstawie dlugosci sprawdzanie w petli czy dana cyfra jest parzysta i przypisać ją do zbioru liczb parzystych lub nie
  4. Wydrukować liczby parzyste i niepatrzyste
  5. wypisać parzyste poprzedzielane + i na koncu = i potem suma
  6. i to samo z nieparzystymi
   */

  String enteredNumbers = getNumber();


  printListOfNumbers(
    message: 'Even numbers ',
    numbers: evenNumbers,
  );
  printListOfNumbers(
    message: 'Odd numbers ',
     numbers: oddNumbers,
  );

   printListOfNumbers(
      message: 'Sum of even numbers: ',
      numbers: evenNumbers,
      separator: '+',
      endMark: '=');

   stdout.write(getSum(numbers: enteredNumbers));
  List<String> test = ["1", "5", "6"];
  print(test.join("+"));
}



String getNumber() {
  stdout.writeln('Enter numbers');
  String enteredNumbers = stdin.readLineSync() ?? '';
  return enteredNumbers;
}

void printListOfNumbers(
    {String message = ' ',
    required String numbers,
    String? separator = ',',
    String endMark = ''}) {
  stdout.write(message);
  for (int i = 0; i < numbers.length; i++) {
    if (i < numbers.length - 1) {
      stdout.write('${numbers[i]}$separator');
    } else {
      stdout.write('${numbers[i]}$endMark');
    }
  }
}

int getSum({required String numbers}) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    int value = int.parse(numbers[i]);
    sum += value;
  }
  return sum;
}
