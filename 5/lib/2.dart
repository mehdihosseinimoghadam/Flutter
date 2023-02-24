import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFBE9),
      appBar: AppBar(title: Text('Americano', style: TextStyle(fontFamily: 'DancingScript', fontWeight: FontWeight.w900, fontSize: 30),), backgroundColor: Color(0xffAD8B73),elevation: 10,),
      //AppBar
      body: Stack(
        children: <Widget>[
          Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [SizedBox(width: 200),
                  SizedBox(height: 600),
                ],
              ),
              Container(
                color: Color(0xffFFFBE9),
                child: Column(
                  children: [
                    Container(height: 50,width: 200,child: ElevatedButton(onPressed: (){}, child: Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.paypal),
                        SizedBox(width: 10,),
                        Text('\$15'),
                      ],
                    ),style: ElevatedButton.styleFrom(primary: Color(0xff614124)),)),

                    SizedBox(height: 10),
                    Container(height: 50,width: 200,child: ElevatedButton(onPressed: (){}, child: Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.currency_bitcoin),
                        SizedBox(width: 10,),
                        Text('\$15'),
                      ],
                    ),style: ElevatedButton.styleFrom(primary: Color(0xff614124)),))
                  ],
                ),

              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.zero, bottom: Radius.circular(20)),
              color: Color(0xffAD8B73),
            ),
            width: double.infinity,
            height: 560,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 500,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.coffee),
                    SizedBox(width: 10,),
                    Text('One Americano with free delivery: \$15 ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, fontFamily: 'DancingScript'),),
                  ],
                ),
              ],
            ),
            // color: Color(0xff614124),
          ), //Container
          Container(
            child: Lottie.network('https://assets2.lottiefiles.com/private_files/lf30_db8jmoij.json'),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.zero, bottom: Radius.circular(20)),
              color: Color(0xffCEAB93),
            ),
          ), //Container//Container
        ], //<Widget>[]
      ), //Stack//SizedBox
      //Center
    );
  }}

