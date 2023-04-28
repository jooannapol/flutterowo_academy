import 'dart:io';

import 'package:flutter/material.dart';

import 'NumbersFilter.dart';

void main() {
  String enteredNumbers = getNumber();
  var numbers = NumbersFilter(enteredNumbers: enteredNumbers);
}

