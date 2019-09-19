import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  onpressed(String k) {
    AssetsAudioPlayer player = AssetsAudioPlayer();
    setState(() {
      if (k=="one") {
        player.open(AssetsAudio(
          asset: "one.mp3",
          folder: "assets/song/",
        ));
         player.play();
      }
       if (k=="two") {
        player.open(AssetsAudio(
          asset: "two.mp3",
          folder: "assets/song/",
        ));
         player.play();
      }
       if (k=="three") {
        player.open(AssetsAudio(
          asset: "three.mp3",
          folder: "assets/song",
        ));
         player.play();
      }
       if (k=="four") {
        player.open(AssetsAudio(
          asset: "four.mp3",
          folder: "assets/song/",
        ));
         player.play();
      }
       if (k=="five") {
        player.open(AssetsAudio(
          asset: "five.mp3",
          folder: "assets/song/",
        ));
         player.play();
      }
       if (k=="six") {
        player.open(AssetsAudio(
          asset: "six.mp3",
          folder: "assets/song/",
        ));
         player.play();
      }
    });
  }

  Widget buildButton(String but, Color p) {
    return Expanded(
      child:OutlineButton(
        color: p,
        splashColor: Colors.black,
        
        child: Text(""),
        padding: EdgeInsets.all(30),
        onPressed: () => onpressed(but),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      
        centerTitle: true,
        title: Text("================    PIANO    ==============="),
        
        backgroundColor: Colors.green,
      ),
      body: Container(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              
              children: <Widget>[
                buildButton("one",Color.fromRGBO(0, 0, 0, 20)),
              ],
            ),
            Column(
              children: <Widget>[
                buildButton("two",Color(0xFFDAE0E2)),
              ],
            ),
            Column(
              children: <Widget>[
                buildButton("three",Color(0xFF2C3335)),
              ],
            ),
            Column(
              children: <Widget>[
                buildButton("four",Color(0xFFDAE0E2)),
              ],
            ),
            Column(
              children: <Widget>[
                buildButton("five",Color(0xFF2C3335)),
              ],
            ),
            Column(
              children: <Widget>[
                buildButton("six",Color(0xFFDAE0E2)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
