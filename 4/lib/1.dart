import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1')),
      body: ListView(
         scrollDirection: Axis.vertical,
          children: [
        Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_eop7ymay.json'),
            Lottie.network(
                'https://assets8.lottiefiles.com/packages/lf20_6sxyjyjj.json'),
            Lottie.network(
                'https://assets8.lottiefiles.com/private_files/lf30_fmvnknvp.json')]
      ),
    );
  }
}
