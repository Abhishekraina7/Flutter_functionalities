import 'package:flutter/material.dart';


// TOdo: Documentation for reference: https://api.flutter.dev/flutter/widgets/Dismissible-class.html



class Dismissble extends StatefulWidget {
  static String id = "Dismissible";
  const Dismissble({super.key});

  @override
  State<Dismissble> createState() => _DismissbleState();
}

class _DismissbleState extends State<Dismissble> {
  List<String> fruits = ["Orange","Banana","Grape","Apple","Berry"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Center(
          child:  Text("Dismissible"),
        ),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
          itemBuilder: (context, index) {
        final fruit= fruits[index];
        return Dismissible(
          background: Container(color: Colors.red),
          secondaryBackground: Container(color: Colors.green,),

          onDismissed: (DismissDirection direction)
          {
            if(direction == DismissDirection.startToEnd)
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                        backgroundColor: Colors.red,
                ));
              }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(fruits[index]),
                backgroundColor: Colors.green,
              ));
            };
          },
          key: Key(fruit),
          child: Card(
            child: ListTile(
              title: Text(fruits[index]),
            ),

          ),);
      }),
    );
  }
}
