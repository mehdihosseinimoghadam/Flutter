import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( backgroundColor: Color(0xff36213E),
        appBar: AppBar( backgroundColor: Color(0xff36213E),elevation: 0,),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              CircleAvatar(backgroundImage: AssetImage('/Users/mehdihm/StudioProjects/profile_card/assets/images/53477752.jpeg'),radius: 70),
              SizedBox(height: 20),
              Text('Mehdi HM', style: TextStyle(fontFamily: "DancingScript", fontSize: 40, fontWeight: FontWeight.w900, color: Color(0xffB8F3FF))),
              Container(height: 1, width: 260,color: Color(0xffB8F3FF),),
              SizedBox(height: 20),
              infoCard(Icon(Icons.phone), Text('+44 1234556789')),
              infoCard(Icon(Icons.email), Text('mehdi@gmail.co.uk')),
              infoCard(Icon(Icons.location_on), Text('Oxfordshire, UK')),
              // infoCard(Icon(Icons.web_asset), Text('mehdihosseinimoghadam.github.io'))
            ]),
        )
      ),
    ),
  );
}




Widget infoCard(dicon, dtext){
  return Container(
    margin: EdgeInsets.all(10),
    height: 60,
    width: 270,
    decoration: BoxDecoration(
      color: Color(0xffB8F3FF),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ dicon, SizedBox(width: 10,), dtext],
    ),
  );
}