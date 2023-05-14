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
      body: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            height: 400,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ), Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ), Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              )],
            ),
          ),
        ),
      )
    );
  }
}
  