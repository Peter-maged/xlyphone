import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playsound(int Soundnumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$Soundnumber.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playsound(1);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(
                      'Note 1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playsound(2);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                      'Note 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(3);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                    child: const Text(
                      'Note 3',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(4);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.purple),
                    child: const Text(
                      'Note 4',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(5);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.orange),
                    child: const Text(
                      'Note 5',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(6);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.teal),
                    child: const Text(
                      'Note 6',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(7);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(
                      'Note 7',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
