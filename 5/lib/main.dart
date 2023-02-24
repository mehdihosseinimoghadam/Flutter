import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '1.dart';
import '2.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/1': (context) => Screen1(),
        '/2': (context) => Screen2()
      },
    );
  }
}






class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFBE9),
      appBar: AppBar(title: Text('Coffe Shop', style: TextStyle(fontFamily: 'DancingScript', fontWeight: FontWeight.w900, fontSize: 30),), backgroundColor: Color(0xffAD8B73),elevation: 10,),
      body:  Row(
        children: [
          Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.zero, bottom: Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          colors: [Color(0xffCEAB93).withOpacity(.8),
                            Color(0xffCEAB93).withOpacity(.4)
                          ])
                  ),
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Lottie.network('https://assets2.lottiefiles.com/packages/lf20_UTYENB.json'),
                ),
                SizedBox(height: 80,),
                Container(height: 50,width: 200,child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/1');}, child: Text('Espresso', style: TextStyle(fontFamily: 'DancingScript', fontWeight: FontWeight.w900, fontSize: 20)),style: ElevatedButton.styleFrom(primary: Color(0xff614124)),)),
                SizedBox(height: 20,),
                Container(height: 50,width: 200,child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/2');}, child: Text('Americano', style: TextStyle(fontFamily: 'DancingScript', fontWeight: FontWeight.w900, fontSize: 20)),style: ElevatedButton.styleFrom(primary: Color(0xff614124)),)),

              ],
            ),
        ],
      ),
    );
  }
}
