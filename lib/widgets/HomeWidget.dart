import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeWidget extends StatelessWidget {
  HomeWidget({
    super.key,
    required this.number,
    required this.txt,
    required this.color,
  });
  Widget number;
  String txt;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return number;
            },
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          height: 60,
          width: double.infinity,
          child: Center(
            child: Text(
              txt,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
