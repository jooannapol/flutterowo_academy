import 'dart:io';

import 'package:flutter/material.dart';

void main() {


  String getNumber() {
    stdout.writeln('Enter numbers');
    String enteredNumbers = stdin.readLineSync() ?? '';
    return enteredNumbers;
  }
}

