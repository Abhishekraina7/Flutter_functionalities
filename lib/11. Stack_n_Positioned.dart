import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


//todo: DOCS link: https://medium.flutterdevs.com/stack-and-positioned-widget-in-flutter-3d1a7b30b09a


class Stack_n_positioned extends StatefulWidget {
  static String id = "Stack_n_positioned";
  const Stack_n_positioned({super.key});

  @override
  State<Stack_n_positioned> createState() => _Stack_n_positionedState();
}

class _Stack_n_positionedState extends State<Stack_n_positioned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Center(child: Text("Stacks"),),
      ),
      body: Center(
        child: Stack(  // From its name its cleared that in this widget its children will placed in one on another manner.
          children: <Widget>[
            Positioned( // Positioned parameter gives you more power to move your other widgets anywhere on the screen
              top: 5,
              right: 15,
              height: 150,
              width: 150,
              child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShMYKIU4GzmwKu2GDZYjdTMsQF1o9CqCfjPg&s'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 30,
              height: 200,
              width: 200,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShMYKIU4GzmwKu2GDZYjdTMsQF1o9CqCfjPg&s'),
                  ),
                ),
                ),
              ),
            Positioned(
              top: 40,
              right: 50,
              height: 300,
              width: 300,
              child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShMYKIU4GzmwKu2GDZYjdTMsQF1o9CqCfjPg&s'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
