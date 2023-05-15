import 'package:awesome_app/drawer.dart';
  import 'package:flutter/material.dart';
  import 'package:http/http.dart' as http;
  import 'dart:convert';

  class Homepage extends StatefulWidget { 
    const Homepage({super.key});

    @override
    State<Homepage> createState() => _HomepageState();
  }

  class _HomepageState extends State<Homepage> {

  final TextEditingController _nameController = TextEditingController();
  var url = "https://jsonplaceholder.typicode.com/photos";
  var myName = "Change me";
  var data;

    @override
    void initState() {
      super.initState();
      getData();
    }

    getData() async {
      var response = await http.get(Uri.parse(url));
      data = jsonDecode(response.body);
      setState(() {});
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Awesome App"),
          backgroundColor: Colors.purple,
        ),
        body: data != null ? ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text("ID: ${data[index]["id"]}"),
              leading: Image.network(data[index]["url"]),
            ),
          );
        }, itemCount: data.length) : const Center(
          child: CircularProgressIndicator(),
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

    