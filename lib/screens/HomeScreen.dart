import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:language_app/screens/ColorsScreen.dart';
import 'package:language_app/screens/FamilyMember.dart';
import 'package:language_app/screens/NumpersPage.dart';
import 'package:language_app/screens/PhrasesScreen.dart';
import 'package:language_app/widgets/HomeWidget.dart';

List<HomeWidget> homeWidget = [
  HomeWidget(number:const NumbersScreen(), txt: "Numbers", color: Colors.purple),
  HomeWidget(number:const FamilyMember(), txt: "Family Member", color: Colors.greenAccent),
  HomeWidget(number:const ColorsScreen(), txt: "Colors", color: Color.fromARGB(255, 99, 9, 131)),
  HomeWidget(number:const PhrasesScreen(), txt: "Phrases", color: Color.fromARGB(255, 48, 57, 217)),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Toku App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
           Expanded(
            child: ListView.builder(
              itemCount: homeWidget.length,
              itemBuilder: (BuildContext context, int index) {
                return homeWidget[index];
              },
            ),
          )
          
        ],
      ),
    );
  }
}
