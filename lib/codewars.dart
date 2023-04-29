void main() {
  String evenOrOdd(int number) {
    if (number % 2 == 0) {
      return 'Even';
    } else {
      return 'Odd';
    }
  }

  print(evenOrOdd(5));
  print(evenOrOdd(8));
  print(evenOrOdd(123));
  print(evenOrOdd(0));
}
