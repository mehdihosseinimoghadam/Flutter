import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1')),
      body: ListView(
          children: [
        Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_xx9zron9.json')]
      ),
    );
  }
}
