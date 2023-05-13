import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    title: "Awesome Application",
    home: Homepage(),
  ));
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome")
      ),
      body: const Center(child: Text("Hello World.")),
    );
  }
}
  