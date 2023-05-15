import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
             UserAccountsDrawerHeader(accountName: Text("Vishal Chand"), accountEmail: Text("sam.chand96@gmail.com"), currentAccountPicture:
              CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
             ), decoration: BoxDecoration(
              color: Colors.purple
             ),), 
             ListTile( 
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("abc@gmail.com"),
                subtitle: Text("Issue"),
                trailing: Icon(Icons.send),
              )
          ],
        )
      );
  }
}