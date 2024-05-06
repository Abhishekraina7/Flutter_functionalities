import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics_one_short/2_SnackBar.dart';




class Drawer_basic extends StatefulWidget {
  static String id = "Drawer";
  const Drawer_basic({super.key});

  @override
  State<Drawer_basic> createState() => _Drawer_basicState();
}
class _Drawer_basicState extends State<Drawer_basic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
             DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black12
                ),
                child:  Container(
                  child: Row(
                    children: [
                      CircleAvatar(radius: 50,
                      backgroundImage: NetworkImage(''),
                      ),
                    ],
                  ),
                ),
            ),
            ListTile(
              leading: const Icon(Icons.folder),
              title: const Text("My files"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Snackbar()));
              }
            ),
            const ListTile(
              leading: Icon(Icons.group),
              title: Text("Shared with me"),
            ),
            const ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
            ),
            const   ListTile(
              leading: Icon(Icons.upload),
              title: Text("Uploads"),
            ),
          ],
        ),

      ),
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Basic Drawer")),
      ),
    );
  }
}
