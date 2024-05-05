import 'package:flutter/material.dart';

    class List_view extends StatefulWidget {
      static String id = 'Listview';
      const List_view({super.key});

      @override
      State<List_view> createState() => _List_viewState();
    }

    class _List_viewState extends State<List_view> {
       // final List<String>items = ['bat','ball','grip','pads'];
        Map nameValue = {
         'Name' : ['Abhishek', 'kartik', 'Bharat','Pawan','Pranjal'],
          'Value': ['Flutter','Android', 'Web-dev','Web-dev','DSA']
       };
       @override
      Widget build(BuildContext context) {
        return  Scaffold(
          appBar: AppBar(
            leading: null,
            title: const Center(child: Text("List view demo")),
            backgroundColor: Colors.grey,
          ),
          body: Container(
            //TODO: This was Listview ka demo code, you uncomment and run it

            // child: ListView.builder(  //If you have defined something like coloumn you will get the renderflex error because the coloumn is not flixbble as listview
            //   itemCount: 5,
            //   itemBuilder: (context,index)
            //   {
            //   return  Card(
            //     child: ListTile(
            //       title: Text(nameValue['Name'][index]),
            //       subtitle: Text(nameValue['Value'][index]),
            //     ),
            //   );
            //   }
            // ),
            // TODO: THIS is GRIDVIEW
            // child: GridView(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            //     mainAxisSpacing: 5, // this is horizontal spacing
            //     crossAxisCount: 2,  // this number of boxes you want to fit on screen at a time horizontally
            //     crossAxisSpacing: 4, // this is vertical spacing btween boxes
            //     childAspectRatio: 1  // Size of boxes
            // ),
            //     children: const [
            //       Card(
            //     child: Center(child: Text('data')),),
            //       Card(
            //         child: Center(child: Text('data')),),
            //       Card(
            //         child: Center(child: Text('data')),),
            //       Card(
            //         child: Center(child: Text('data')),),
            //       Card(
            //         child: Center(child: Text('data')),),
            //       Card(
            //         child: Center(child: Text('data')),),
            //       Card(
            //         child: Center(child: Text('data')),),
            //       Card(
            //         child: Center(child: Text('data')),),
            //       Card(
            //         child: Center(child: Text('data')),),
            //
            //   ],
            //
            // ),
            child: GridView.builder(
              itemCount: 5, // This is the size of map you are using other wise you will have infinite scrolling list
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             mainAxisSpacing: 5, // this is horizontal spacing
             crossAxisCount: 2,  // this number of boxes you want to fit on screen at a time horizontally
             crossAxisSpacing: 4, // this is vertical spacing btween boxes
             childAspectRatio: 1  // Size of boxes
            ),
                itemBuilder: (context, index){
              return Card(
                child: Center(
                  child: Text(nameValue['Name'][index]),
                ),
              );
                }),
            
          ),
        );
      }
    }


