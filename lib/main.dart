import 'package:flutter/material.dart';
import 'package:learn_flutter_68_1/screen/Home.dart';

void main() {
  //const app = MaterialApp(title: 'My App', home: Text('Hello World'));
  runApp(
    MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Home(),
      ),
    )
  );
}
