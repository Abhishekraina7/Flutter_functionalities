import 'package:flutter/material.dart';
import 'package:flutter_basics_one_short/2_SnackBar.dart';
import 'package:flutter_basics_one_short/5_image_widget.dart';
import 'package:flutter_basics_one_short/7_Bottom_sheet.dart';

// todo: BottomNavBar doc--- https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
// todo: PageController doc --  https://api.flutter.dev/flutter/widgets/PageController-class.html



class Bottom_nav_bar extends StatefulWidget {
  static String id = "Bottom_navigation_bar";
  const Bottom_nav_bar({super.key});

  @override
  State<Bottom_nav_bar> createState() => _Bottom_nav_barState();
}

class _Bottom_nav_barState extends State<Bottom_nav_bar> {
  int selected_index = 0;
  PageController page_controller = PageController(); // this helps you to navigate through various pages in your app

  // List<Widget> Items = <Widget>[
  //   const Text("Home"),
  //   const Text("Business"),
  //   const Text("School"),
  // ];

  void onTapped(int index){
    setState(() {
      selected_index = index;
    });
    page_controller.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   leading: null,
      //   title:const Center(child: Text("BOTTOM NAV BAR"),),
      // ),
      body: PageView(  // This
        controller: page_controller,
        children: <Widget>[
           Snackbar(),
          Bottom_sheet(),
          Image_widget(),
        ],
      ),

      // Following part is not dynamic i.e you can't Interact with it
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'SnackBar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'BottomSheet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Image',
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
