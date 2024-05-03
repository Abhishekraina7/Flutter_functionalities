import 'package:flutter/material.dart';

    class List extends StatefulWidget {
      static String id = 'Listview';
      const List({super.key});

      @override
      State<List> createState() => _ListState();
    }

    class _ListState extends State<List> {
      @override
      Widget build(BuildContext context) {
        return  Scaffold(
          appBar: AppBar(
            leading: null,
            title: const Center(child: Text("List view demo")),
            backgroundColor: Colors.grey,
          ),
          body: Container(
            child: ListView( // If you have defined something like coloumn you will get the renderflex error because the coloumn is not flixbble as listview
              children: const [
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.blue,
                    title: Text("Fruit"),
                    subtitle: Text("Orange"),
                  ),
                ),

              ],
            ),
          ),
        );
      }
    }


