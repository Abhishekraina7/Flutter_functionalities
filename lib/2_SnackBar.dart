import 'package:flutter/material.dart';

// Todo: Here is the documentation for snackbar: https://docs.flutter.dev/cookbook/design/snackbars


class Snackbar extends StatefulWidget {
  static String id = "SnackBar";
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Center(child: Text("Snackbar")),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          const snackbar =   SnackBar(
            duration: Duration(seconds: 3),
            backgroundColor: Colors.red,
              content:
              Text("Boom here is the Snack Bar")
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
            child: const Text("ShowSnackBar and you came from Drawer?")),
      ),
    );
  }
}
