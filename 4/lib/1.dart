import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1')),
      body: Center(
        child: Container(
          height: 50,
          width: 140,
          child: ElevatedButton(
            onPressed: (){},
            child: Text('Page1'),

          ),
        ),
      ),
    );
  }
}
