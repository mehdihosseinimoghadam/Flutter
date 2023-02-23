import 'package:flutter/material.dart';
import '1.dart';
import '2.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page0'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/1');}, child: Text('Go to Page 1'),)),
                Container(child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/2');}, child: Text('Go to Page 2'),))
            ],
          ),
        ),
      ),
        routes: {
        '/1': (context) => Screen1(),
        '/2': (context) => Screen2()
    },
    );
  }
}
