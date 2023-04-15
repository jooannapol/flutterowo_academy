import 'dart:io';

/*
- Wydrukowanie polecenia
- Przechowanie wprowadzonego tekstu w zmiennej
- zmiana pozycji pierwszego znaku na koniec w pętli -> to nie ma sensu bo tekst będzie ten sam
  abcd -> bcda -> cdab -> dabc -> abcd
- wydrukowanie rezultatu

 */
void main(){
  stdout.write('Write a sentence to reverse ');
  String enteredText = stdin.readLineSync()!;
  String reversedText = '';
  for(int i = enteredText.length - 1; i >= 0; i--){
  reversedText += enteredText[i];
  }
  print(reversedText);


}