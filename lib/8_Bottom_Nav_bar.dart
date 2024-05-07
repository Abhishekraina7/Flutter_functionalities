import 'package:flutter/material.dart';



class Bottom_nav_bar extends StatefulWidget {
  static String id = "Bottom_navigation_bar";
  const Bottom_nav_bar({super.key});

  @override
  State<Bottom_nav_bar> createState() => _Bottom_nav_barState();
}

class _Bottom_nav_barState extends State<Bottom_nav_bar> {
  int selected_index = 0;
  List<Widget> Items = <Widget>[
    const Text("Home"),
    const Text("Business"),
    const Text("School"),
  ];
  void onTapped(int index){
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: null,
        title:const Center(child: Text("BOTTOM NAV BAR"),),
      ),

      body: Center(child: Items.elementAt(selected_index)),// displays the text present in the active index

      // Following part is not dynamic i.e you can't Interact with it
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: selected_index,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
