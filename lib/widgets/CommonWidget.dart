import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

// ignore: must_be_immutable
class NumberWidget extends StatelessWidget {
  NumberWidget({
    super.key,
    required this.image,
    required this.eName,
    required this.jName,
    required this.number,
    required this.audio,
  });
  String image, number, audio;
  String eName, jName;
  Color? colorInImage, containerColor;
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    if (number == "numbers") {
      colorInImage = const Color.fromARGB(255, 163, 182, 192);
      containerColor = Colors.purple;
    } else if (number == "Family") {
      colorInImage = Colors.white38;
      containerColor = Colors.blueGrey;
    } else {
      colorInImage = const Color.fromARGB(255, 217, 217, 217);
      containerColor = Colors.blueGrey;
    }

    return Container(
      color: containerColor,
      height: 80,
      child: Row(
        children: [
          Container(
            color: colorInImage,
            child: ClipRRect(
              child: Image.asset(
                image, // Replace with your image URL
                width: 90,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  eName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
