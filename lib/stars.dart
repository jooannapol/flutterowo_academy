import 'dart:io';

void main() {
  stdout.write('Enter number of rows: ');
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}



