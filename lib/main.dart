import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          color: const Color(0xFF3A5A98),
          size: 70,
        ),
      ),
    );
  }

  Expanded rowButtons(
      {required String leftAnimal, required String rightAnimal}) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(animalName: leftAnimal),
          buildKey(animalName: rightAnimal),
        ],
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
          backgroundColor: const Color.fromRGBO(70, 91, 148, 1),
          title: const Text("Animal Sound"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            rowButtons(leftAnimal: "bird", rightAnimal: "duck"),
            rowButtons(leftAnimal: "cat", rightAnimal: "dog"),
            rowButtons(leftAnimal: "chicken", rightAnimal: "rooster"),
            rowButtons(leftAnimal: "horse", rightAnimal: "elephant"),
            rowButtons(leftAnimal: "tiger", rightAnimal: "lion"),
          ],
        ),
      ),
    );
  }
}
