import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:  [
        Image.asset('assets/images/cat.png', width: 200, height: 200,),
        SizedBox(height: 20),
        Image.network('https://pixabay.com/th/images/download/xsimb-cat-8612685_1920.jpg', width: 200, height: 200,),
        
      ],
    );
  }
}