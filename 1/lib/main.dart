import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title:
          Text('I am Rich',
           ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900]
      ),
      backgroundColor: Colors.blueGrey[700],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [imageCard('https://cdn.motor1.com/images/mgl/noe8l/s1/2018-mercedes-amg-gt-r-first-drive.jpg'),
              imageCard('https://cdn.carbuzz.com/gallery-images/1600/429000/300/429357.jpg'),
              imageCard('https://cdn.motor1.com/images/mgl/QN6GO/s1/2018-mercedes-amg-gt-r-first-drive.jpg'),
              imageCard('https://f7432d8eadcf865aa9d9-9c672a3a4ecaaacdf2fee3b3e6fd2716.ssl.cf3.rackcdn.com/C2299/U8388/IMG_34636-large.jpg')]
          )
        ),
      )

    ),
  ),
  );
}





Widget imageCard(image){
  return AspectRatio(
      aspectRatio: 2.6/3,
      child: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image)
        )
      ),
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           gradient: LinearGradient( begin: Alignment.bottomRight,
               colors: [Colors.black.withOpacity(.8), Colors.black.withOpacity(.2)],
               stops: [.2,.7]
           )
         ),
       child: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [Text('Mercedes-Benz', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900), ),
                      Text('AMG GT R', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),)],
         ),
       ),
       ),
  ),
  );
}