import 'package:flutter/material.dart';
import 'package:language_app/lists/Family_list.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "Family Member",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: familyMember.length,
              itemBuilder: (BuildContext context, int index) {
                return familyMember[index];
              },
            ),
          )
        ],
      ),
    );
  }
}