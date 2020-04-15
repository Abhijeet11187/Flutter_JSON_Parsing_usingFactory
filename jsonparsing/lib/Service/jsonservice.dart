import 'package:flutter/services.dart';

class JsonService{
   Future<String> loadFromAssets() async {
    return await rootBundle.loadString('json/sample-json-file.json');
  }
}