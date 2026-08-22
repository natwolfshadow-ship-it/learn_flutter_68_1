import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';
//import 'package:learn_flutter_68_1/screen/Home.dart';
//import 'package:learn_flutter_68_1/screen/item.dart';
import 'package:learn_flutter_68_1/screen/addForm.dart';
import 'package:learn_flutter_68_1/screen/item.dart';

void main() {
  //const app = MaterialApp(title: 'My App', home: Text('Hello World'));
  // runApp(
  //   MaterialApp(
  //     title: 'My App',
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('My App'),
  //         backgroundColor: Colors.green,
  //         centerTitle: true,
  //       ),
  //       body: AddForm(),
  //     ),
  //   )
  // );
  runApp(const AddForm());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Person"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Item()
      ),
    );
  }
}
