import 'package:flutter/material.dart';
import 'package:pratice/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernameFeild = TextField(
      onChanged: (val){
      setState(() {
        username =val;
      });
      },
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        hintText: "Username",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final userpasswordFeild = TextField(
         onChanged: (val){
      setState(() {
        password =val;
      });
      },
      style: myStyle,
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final myBtn = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        onPressed:(){
          if(username == "Prakash" && password == "123456789"){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen(username)));
          }else{
            print("Log in fail");
          }
        },
        child: Text("Login",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children:[
                  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.supervised_user_circle, size: 100),
                  SizedBox(height: 150),
                  usernameFeild,
                  SizedBox(height: 20),
                  userpasswordFeild,
                  SizedBox(height: 20),
                  myBtn,
                  SizedBox(height: 25),
                  Text("Develop by Prakash",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ],
              )
                ],
              )
              ),
        ),
      ),
    );
  }
}
