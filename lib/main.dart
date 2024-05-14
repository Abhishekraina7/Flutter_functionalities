import 'package:flutter/material.dart';
import 'package:flutter_basics_one_short/1_listview_n_grid_view.dart';
import 'package:flutter_basics_one_short/2_SnackBar.dart';
import 'package:flutter_basics_one_short/3_Dismissible.dart';
import 'package:flutter_basics_one_short/4_Drawer.dart';
import 'package:flutter_basics_one_short/5_image_widget.dart';
import 'package:flutter_basics_one_short/6_alert_dialog_box.dart';
import 'package:flutter_basics_one_short/7_Bottom_sheet.dart';
import 'package:flutter_basics_one_short/8_Bottom_Nav_bar.dart';
import 'package:flutter_basics_one_short/9.Drop_down.dart';
import 'package:flutter_basics_one_short/10_Forms.dart';
import 'package:flutter_basics_one_short/11.%20Stack_n_Positioned.dart';
import 'package:flutter_basics_one_short/12_Tab_Bar.dart';
import 'package:flutter_basics_one_short/13_Image_picker.dart';
import 'package:flutter_basics_one_short/14_Simple_insta_UI.dart';

void main(){
  runApp(flutter_basics_one_short());
}

class flutter_basics_one_short extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: Clone.id,
      routes: {
        List_view.id: (context) => const List_view(),
        Snackbar.id: (context) => const Snackbar(),
        Dismissble.id: (context) => const Dismissble(),
        Drawer_basic.id: (context) => const Drawer_basic(),
        Image_widget.id: (context ) => const Image_widget(),
        Alert_Dialog.id: (context) => const Alert_Dialog(),
        Bottom_sheet.id: (context) => const Bottom_sheet(),
        Bottom_nav_bar.id: (context) => const Bottom_nav_bar(),
        // Drop_down.id: (context) => const Drop_down(),
        forms_class.id: (context) => const forms_class(),
        Stack_n_positioned.id: (context) => const Stack_n_positioned(),
        Tab_Bar.id: (context) => const Tab_Bar(),
        Image_picker.id: (context) => const Image_picker(),
        Clone.id: (context) => const Clone(),
      },
    );
  }
}

