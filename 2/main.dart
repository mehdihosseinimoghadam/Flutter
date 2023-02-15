import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '2pac',
           style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        ),
        backgroundColor: Color(0xff230C33),
      ),
      body:
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://w0.peakpx.com/wallpaper/64/34/HD-wallpaper-tupac-discover-more-2pac-hip-hop-rap-rapper-tupac-in-2022-tupac-hip-hop-poster-tupac-tupac-art.jpg'),
                  fit: BoxFit.cover
            )
          ),
          child: Container( child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter, colors: [Colors.black.withOpacity(.8), Colors.black.withOpacity(.2)],
              )
            ),
            child: Column(
              children: [
                SizedBox(height: 80),
                playButton('All Eyes on Me'),
                playButton('Dear MaMa')
              ],
            ),
          ),
          ),
        ),
    ),
  ),);
}


Widget playButton(song_name){
  return InkWell(
    onTap: (){
      print('hello');
    },
    child: Center(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xff6F4B3D)
            
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon( Icons.music_note_rounded, size: 44, color: Colors.white60,),
              Text(song_name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white60),)
          ],
        ),
      ),
    ),
    ),
  );
}











