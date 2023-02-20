import 'package:flutter/material.dart';


import 'package:just_audio/just_audio.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '2pac',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50, fontFamily: 'DancingScript'),
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
                begin: Alignment.bottomCenter, colors: [Colors.black.withOpacity(.4), Colors.black.withOpacity(.1)],
              )
          ),
          child:  Padding(
            padding: const EdgeInsets.all(50.0),
            child: SafeArea(
            child: SingleChildScrollView( child:
            Column(
              // crossAxisAlignment: CrossAxisAlignment ,
              children: [
                SizedBox(height: 80),
                multiButtonPlay('All Eyes on Me',"/Users/mehdihm/StudioProjects/tupac/assets/2.mp3"),
                SizedBox(height: 20),
                multiButtonPlay('Dear Mama', '/Users/mehdihm/StudioProjects/tupac/assets/3.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Do For Love', '/Users/mehdihm/StudioProjects/tupac/assets/4.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Dont Sleep', '/Users/mehdihm/StudioProjects/tupac/assets/5.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Dont Stop', '/Users/mehdihm/StudioProjects/tupac/assets/6.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Fuck The World', '/Users/mehdihm/StudioProjects/tupac/assets/7.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Jewels', '/Users/mehdihm/StudioProjects/tupac/assets/8.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Keep Ya Head Up', '/Users/mehdihm/StudioProjects/tupac/assets/9.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Lil  Homies', '/Users/mehdihm/StudioProjects/tupac/assets/10.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('New York', '/Users/mehdihm/StudioProjects/tupac/assets/11.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Smoke Wit Me', '/Users/mehdihm/StudioProjects/tupac/assets/12.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('The Money', '/Users/mehdihm/StudioProjects/tupac/assets/13.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Thug Nature', '/Users/mehdihm/StudioProjects/tupac/assets/14.mp3'),
                SizedBox(height: 20),
                multiButtonPlay('Thug Style', '/Users/mehdihm/StudioProjects/tupac/assets/15.mp3'),
                // multiButtonPlay()
              ],
            ),
          ),
        ),
        ),
      ),
    ),
  ),)));
}

//
// Widget playButton(song_name, path){
//   return InkWell(
//     onTap: (){
//       final _player = AudioPlayer();
//       _player.setAudioSource(AudioSource.asset(path)) ;
//       _player.play();
//     },
//     child: Center(
//       child: Container(
//         margin: EdgeInsets.all(10),
//         height: 60,
//         width: 300,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(50),
//             color: Color(0xff6F4B3D)
//
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon( Icons.music_note_rounded, size: 44, color: Colors.white60,),
//               Text(song_name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white60),)
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

Widget multiButtonPlay(song_name, path){
  final _player = AudioPlayer();
  return Material(

      borderRadius: BorderRadius.all(Radius.circular(40)),
      color: Color(0xff6F4B3D).withOpacity(.1),
      elevation: 1,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 40,
        width: 270,
      child:
      GestureDetector(
    onTap: (){
      _player.setAudioSource(AudioSource.asset(path)) ;
      _player.play()
       ;
    },
    onDoubleTap: (){
      _player.stop() ;
    },
    child: Center(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon( Icons.play_circle_fill, size: 30, color: Colors.white60,),
              SizedBox(width: 10),
              Text(song_name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200, color: Colors.white60, fontFamily: 'DancingScript'),),

            ],
          ),

      ),
    ),
  )
  );
}


