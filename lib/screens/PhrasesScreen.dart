import 'package:flutter/material.dart';
import 'package:language_app/lists/phrases.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, index) {
          return phrases[index];
        },
      ),
    );
  }
}
