import 'dart:io';

void main() {
  int rows = getNumberOfRows();
  printStarsTreePattern(rows);
}

int getNumberOfRows(){
  stdout.write('Enter number of rows: ');
  int rows = int.parse(stdin.readLineSync()!);
  return rows;
}
void printStarsTreePattern(int rows){
  for (int i = 1; i <= rows; i++) {
    String stars = "*" * (2*i - 1);
    String spaces = " " * (rows - i);
    stdout.writeln(spaces + stars);
  }
}



