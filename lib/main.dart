import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/bird.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/bird.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/duck.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/duck.png"),
                        color: Color(0xFF3A5A98),
                        size: 90,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/cat.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/cat.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/dog.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/dog.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/chicken.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/chicken.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/rooster.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/rooster.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/horse.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/horse.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/elephant.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/elephant.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/lion.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/tiger.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[100]),
                      ),
                      onPressed: () {
                        final player = AudioPlayer();
                        player.setAsset('assets/animalSound/tiger.wav');
                        player.play();
                      },
                      child: ImageIcon(
                        AssetImage("assets/lion.png"),
                        color: Color(0xFF3A5A98),
                        size: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
