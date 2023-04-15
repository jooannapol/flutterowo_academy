import 'dart:io';

/*
- Wydrukowanie polecenia
- Przechowanie wprowadzonego tekstu w zmiennej
- zmiana pozycji pierwszego znaku na koniec w pętli -> to nie ma sensu bo tekst będzie ten sam
  abcd -> bcda -> cdab -> dabc -> abcd
- wydrukowanie rezultatu

 */
void main(){
  String enteredText = getText();
  reverseText(enteredText);
}

String getText(){
  stdout.write('Write a sentence to reverse ');
  String text = stdin.readLineSync()!;
  return text;
}

void reverseText(String text){
  String reversedText = '';
  for(int i = text.length - 1; i >= 0; i--){
    reversedText += text[i];
  }
  stdout.write(reversedText);
}