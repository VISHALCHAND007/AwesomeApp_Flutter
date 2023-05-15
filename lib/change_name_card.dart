import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    super.key,
    required this.myName,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String myName;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/bg.jpg"),
        const SizedBox(
          height: 20
        ),
        Text(
          myName,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: OutlineInputBorder(), 
              hintText: "Enter something here...",
              labelText: "Name"
            ),
          ),
        )
      ],
    );
  }
}