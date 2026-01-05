import 'package:flutter/material.dart';
import 'package:jainebook/core/service_locator.dart';
import 'package:jainebook/jain_e_book.dart';

void main() async{
  setupLocator();
  runApp(JainEBook());
}

