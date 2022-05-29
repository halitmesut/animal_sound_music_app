import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(String animalName) {
    final player = AudioPlayer();
    player.setAsset('assets/animalSound/$animalName.wav');
    player.play();
  }

  Expanded buildKey({required String animalName}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green[100]),
        ),
        onPressed: () {
          playSound(animalName);
        },
        child: ImageIcon(
          AssetImage("assets/$animalName.png"),
          color: Color(0xFF3A5A98),
          size: 70,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(70, 91, 148, 1),
          title: const Text("Animal Sound"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(animalName: "bird"),
                  buildKey(animalName: "duck"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(animalName: "cat"),
                  buildKey(animalName: "dog"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(animalName: "chicken"),
                  buildKey(animalName: "rooster"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(animalName: "horse"),
                  buildKey(animalName: "elephant"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(animalName: "tiger"),
                  buildKey(animalName: "lion"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
