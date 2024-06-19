import 'package:flutter/material.dart';
import 'package:language_app/lists/numbers_list.dart';


class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (BuildContext context, int index) {
                return numbers[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
