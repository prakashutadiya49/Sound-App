
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: sound(),
        ),
      ),
    ),
  );
}
class sound extends StatelessWidget {
  const sound({super.key});
  Expanded play({Color? color}){
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioPlayer();                   // Create a player
          final duration =  player.setUrl(           // Load a URL
              'assets/audio/note1.wav');                 // Schemes: (https: | file: | asset: )
          player.play();
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        play(color:Colors.red),
        play(color:Colors.blue),
        play(color:Colors.orange),
        play(color:Colors.purple),
        play(color:Colors.green),
        play(color:Colors.yellow),
        play(color:Colors.cyan),
      ],
    );
  }
}

