import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

// ignore: must_be_immutable
class PhrasesWidget extends StatelessWidget {
  PhrasesWidget({super.key, required this.enText, required this.jText ,required this.audio});

  final String enText;
  final String jText;
  String audio;
  final player = AudioPlayer(); // Create an instance of AudioPlayer

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color.fromRGBO(68, 138, 255, 1),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  enText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                player.setAsset(audio);
                player.play();
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
