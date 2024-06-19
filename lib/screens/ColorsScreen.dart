import 'package:flutter/material.dart';
import 'package:language_app/lists/colors_list.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "Colors ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: colors.length,
              itemBuilder: (BuildContext context, int index) {
                return colors[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
