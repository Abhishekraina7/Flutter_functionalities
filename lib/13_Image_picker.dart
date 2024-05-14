    import 'dart:io';
    import 'package:flutter/material.dart';
    import 'package:image_picker/image_picker.dart';


  //todo : DOC link for the ImagePicker Package: https://pub.dev/packages/image_picker


    class Image_picker extends StatefulWidget {
      static String id = "Image_picker";
      const Image_picker({super.key});

      @override
      State<Image_picker> createState() => _Image_pickerState();
    }

    class _Image_pickerState extends State<Image_picker> {
      ImagePicker _picker = ImagePicker(); // Imagepicker library object
      XFile? file;  //XFile is cross-platform file representation, which means it can be used  on bothe iOS and android

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leading: const Icon(Icons.image),
            title: const Text("ImagePicker"),
          ),
          body: Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Center(
                    child: file==null?
                        const Text("Image not Picked")
                        :Image.file(File(file!.path),
                    ), // This is ternary operator being used here
                  ),
                ),
                ElevatedButton(
                    onPressed: () async{
                     final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
                     setState(() {
                       file = photo;
                     });
                     print("Image picked");
                    },
                    child: const Text("Pick Image"))
              ],
            ),
          ),
        );
      }
    }
