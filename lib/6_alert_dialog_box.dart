import 'package:flutter/material.dart';


//todo: Doc link: https://api.flutter.dev/flutter/material/AlertDialog-class.html


class Alert_Dialog extends StatefulWidget {
  static String id = "Alert_dialog";
  const Alert_Dialog({super.key});

  @override
  State<Alert_Dialog> createState() => _Alert_DialogState();
}

class _Alert_DialogState extends State<Alert_Dialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: const Icon(Icons.add_alert),
        title:const Center(child: Text("Alert Dialog"),),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: ()=> showDialog<String>(
              context: context,
              builder: (BuildContext context) =>   AlertDialog(
                title:  Text("Alert dialog title"),
                content:  Text("Dialog Desction"),
                actions: <Widget>[
                  TextButton(onPressed: () => Navigator.pop(context),
                      child: const Text("Cancle")),
                  TextButton(onPressed: () =>Navigator.pop(context), 
                      child: const Text("OK"))
                ],
              ),
              ),
          child: const Text("Show alert Dialog"),
            ),
           ),
      );

  }
}


