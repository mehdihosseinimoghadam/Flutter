import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(

     debugShowCheckedModeBanner: false,
     home: Scaffold(

       backgroundColor: Colors.grey[300],
       body: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               neubutton1( 'https://assets8.lottiefiles.com/packages/lf20_t9amg50m.json'),
               SizedBox(height: 30),
               neubutton1('https://assets9.lottiefiles.com/packages/lf20_0qba4tvf.json')
           ],),
         ],
       ),
     ),
  ),
  );
}





Widget neubutton1(path){
  return Container(
    height: 200,
    width: 200,
    child: Lottie.network(path),
    decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              color: (Colors.grey[500])!,
              offset: Offset(-4,-4),
              blurRadius: 15,
              spreadRadius: 1
          ),

          BoxShadow(
              color: (Colors.white)!,
              offset: Offset(4,4),
              blurRadius: 15,
              spreadRadius: 1
          )

        ]

    ),
  );
}


