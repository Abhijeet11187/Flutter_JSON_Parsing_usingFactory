import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:jsonparsing/Service/jsonservice.dart';
import 'package:jsonparsing/Model/JsonModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Parsing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'JSON Parsing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
 void initState(){
   super.initState();
 }

 
// Loading data from assets
  Future<String> loadPerson() async {
    String jsonString = await JsonService().loadFromAssets();
    final jsonResponse = json.decode(jsonString);
    Person person = Person.fromJson(jsonResponse);
    print("Response is parsed");
    print("Name is ${person.firstName}");
    print("Object is ${person.places}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Press the Button and check the console for Json Parsed data',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: loadPerson,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
