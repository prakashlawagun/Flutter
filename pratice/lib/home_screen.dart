import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  HomeScreen(this.username);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Home Page"),
        centerTitle: true,
      ),
      body: Column(
        children:[
          SizedBox(height:25),
          Center(child: Text("Welcome" + username,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          SizedBox(height:250),
           Text("Develop by Prakash",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
          
        ],
      ),
    );
  }
}