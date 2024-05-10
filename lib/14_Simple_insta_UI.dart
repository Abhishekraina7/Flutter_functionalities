import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Clone extends StatelessWidget {
  static String id = "Clone";
  const Clone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Colors.white,
        title: const Text("Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold,
               color: Colors.black),),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
              // Profile part
              child: Row(
                children: [ //
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 180,
                    color: Colors.white,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: 
                          NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN-wq5bwwbn0cFhs2F4nWn1ZGgOrsNG3JKbQ&s'),
                          radius: 60,
                        ),
                        Text("Abhishek raina", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black,),),
                        Text("Flutter Developer", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.red),),

                      ],
                    ),
                  ),
                  Expanded(
                      child:
                      Container(
                        color:Colors.white,
                        child: Column(
                          children: [
                            Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 75),
                               ProfileDetails('150', 'Posts'),
                                const SizedBox(width: 20),
                               ProfileDetails('5k', 'Followers'),
                                const SizedBox(width: 20),
                                ProfileDetails('100', 'Following'),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.blue

                                      ),
                                        onPressed: (){},
                                        child: const Text('Follow'),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blue,width: 2
                                      ),
                                      color:Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.arrow_drop_down,color: Colors.blue,),
                                  ),
                                ],
                              ),

                            ),
                          ],
                        ),
                      ),

                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,//If you have defined something like coloumn you will get the renderflex error because the coloumn is not flixbble as listview
               itemCount: 5,
              itemBuilder: (context,index)
                 {
                 return Column(
                   children:[
                     Container(
                     margin: const EdgeInsets.all(5),
                     height: 70,
                     width: 70,
                     decoration: const BoxDecoration(
                       image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN-wq5bwwbn0cFhs2F4nWn1ZGgOrsNG3JKbQ&s')),
                       color:Colors.grey,
                       shape: BoxShape.circle,
                     ),
                   ),
                     const Text("Story",style: TextStyle(color: Colors.black),),
                   ],
                 );
                }
                ),

            ),
            Container(
              height: 100,
              color: Colors.blue,
            ),
           Expanded(child: Container(color: Colors.black,))
          ],
        ),
      ),
    );
  }
}
// Made this widget so that I can call it multiple times so as to not repeat the same code.
Widget ProfileDetails(String text1, text2){
  return  Column(
    children: [
      Text(text1,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
      Text(text2,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.red),),
    ],
  );
}


