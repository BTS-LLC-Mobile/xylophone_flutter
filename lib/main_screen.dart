import 'package:flutter/material.dart';
import 'view/music_keys.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MusicKeys(fileName: 'note1', keyColor: Colors.red,),
                MusicKeys(fileName: 'note2', keyColor: Colors.orange,),
                MusicKeys(fileName: 'note3', keyColor: Colors.yellow,),
                MusicKeys(fileName: 'note4', keyColor: Colors.green,),
                MusicKeys(fileName: 'note5', keyColor: Colors.teal,),
                MusicKeys(fileName: 'note6', keyColor: Colors.blue,),
                MusicKeys(fileName: 'note7', keyColor: Colors.purple,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
