import 'package:flutter/material.dart';

//todo: DocsLink: https://api.flutter.dev/flutter/material/showModalBottomSheet.html

class Bottom_sheet extends StatefulWidget {
  static String id = "Bottom_sheet";
  const Bottom_sheet({super.key});

  @override
  State<Bottom_sheet> createState() => _Bottom_sheetState();
}

class _Bottom_sheetState extends State<Bottom_sheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: const Icon(Icons.hourglass_bottom),
        title:const Center(child: Text("Bottom Sheet"),),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()=>
              showModalBottomSheet<void>(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.orange,
                child:  Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                       const Text("This is Modal Bottomsheet"),
                      ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Close")
                      )
                    ],
                  ),
                ),
              );

            }
          ),
          child: const Text("Show Bottom sheet"),
        ),
      ),
    );
  }
}
