import 'package:awesome_app/change_name_card.dart';
import 'package:awesome_app/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget { 
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

final TextEditingController _nameController = TextEditingController();
var myName = "Change me";

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Card(
          child:  ChangeNameCard(myName: myName, nameController: _nameController),
        ),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myName = _nameController.text;
          setState(() {});
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

  