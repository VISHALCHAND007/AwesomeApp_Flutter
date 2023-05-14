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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration:  BoxDecoration(
            gradient: const LinearGradient(colors: [Colors.yellow, Colors.pink]),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(2.0, 5.0)
            )
            ]
          ),
          child: const Text("I am a box",textAlign: TextAlign.center, style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
        ),
      )
    );
  }
}
  