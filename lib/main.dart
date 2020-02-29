import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

  

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({Color color, int sound}){
     return Expanded(
        child: FlatButton(
          onPressed: () {
              final player = AudioCache();
              player.play('note$sound.wav');
            },
            color: color,
              ),
            );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              buildKey(color: Colors.red,sound: 1),
              buildKey(color: Colors.orange,sound: 2),
              buildKey(color: Colors.yellow,sound: 3),
              buildKey(color: Colors.green,sound: 4),
              buildKey(color: Colors.teal,sound: 5),
              buildKey(color: Colors.blue,sound: 6),
              buildKey(color: Colors.purple,sound: 7),
           
          
          ]
          ),
        ),
      ),
    );
  }
}
