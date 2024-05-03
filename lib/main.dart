import 'package:flutter/material.dart';
import 'package:flutter_basics_one_short/listview.dart';

void main(){
  runApp(flutter_basics_one_short());
}

class flutter_basics_one_short extends StatelessWidget {
  const flutter_basics_one_short({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: List.id,
      routes: {
        List.id: (context) => const List(),
      },
    );
  }
}

