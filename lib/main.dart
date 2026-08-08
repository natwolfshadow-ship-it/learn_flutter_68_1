import 'package:flutter/material.dart';

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
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Hello World'));
  }
}

