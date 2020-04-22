import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp(XyploApp());
}
class XyploApp extends StatelessWidget{
  void Playsound()
  {
    final player=AudioCache();
    player.play('tone1.mp3');
  }
  Expanded buildkey({Color color})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:() {
          Playsound();
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.blue),
              buildkey(color: Colors.black12),
              buildkey(color: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}