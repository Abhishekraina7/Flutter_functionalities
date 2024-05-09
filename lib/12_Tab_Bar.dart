import 'package:flutter/material.dart';



// Todo: Docs link: https://docs.flutter.dev/cookbook/design/tabs

class Tab_Bar extends StatefulWidget {
  static String id = "Tab_Bar";
  const Tab_Bar({super.key});

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( // this controls what happens when you click on tab, its similiar to Pagecontroller of BottmNavbar
        length: 3, // this means how many tabs you are going to include
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leading: null,
            bottom:  const TabBar(
              indicatorColor: Colors.white,
                tabs: [
                  Tab(icon: Icon(Icons.chat),),
                  Tab(icon: Icon(Icons.chat_bubble_rounded)),
                  Tab(icon: Icon(Icons.call_sharp)),
                ],
          ),
            title: const Text("WhatApp"),
          ),
          body: const TabBarView(children:
          [
            Center(child: Text("Tab View for chats tab")),
            Center(child: Text("Tab View for Status tab")),
            Center(child: Text("Tab View for calls tab")),
          ],
          ),
        ),
    );
  }
}
