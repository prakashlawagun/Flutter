import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Card",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: Color(0xFF363f93),
               boxShadow:[
                new BoxShadow(
                  color:Color(0xFF360f93).withOpacity(0.3),
                  offset:new Offset(-10.0,0.0),
                  blurRadius:20.0,
                  spreadRadius:4.0,
                )],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                  ),
                ),
                Positioned(
                  top: 115,
                  left: 20,
                  child: Text("Your Books",
                      style: TextStyle(
                          fontSize: 40,
                          color: Color(0xFF363f93),
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 25,
                    child: Material(
                      child: Container(
                        height: 180.0,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(0.0),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: new Offset(-10.0, 10.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 30,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/101.jpg'),
                              ))),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      left: 190,
                      child: Container(
                        height: 150,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Big Miracles",
                                style: TextStyle(fontSize: 20, color: Color(0xFF363f93),fontWeight: FontWeight.bold)),
                            Text("Prakash Lawagun",
                                style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold)),
                            Divider(color:Colors.black,thickness: 1,endIndent:6,),
                           Text("Be Happy,Keep Smile",
                                style: TextStyle(fontSize: 16, color: Color(0xFF363f93),fontWeight: FontWeight.bold)), 
                          ],
                        ),
                      )),

                ],
              ),
              ),
        Expanded(
        child:MediaQuery.removePadding(context: context, 
        removeTop: true,
        child:ListView( 
          children: [
          Container(
            margin:  const EdgeInsets.only(bottom: 10,top:25),
            height: 200,
            padding:const EdgeInsets.only(left: 20,right:20,bottom:20),
            child: Container(
            decoration:BoxDecoration(
              color:Color(0xFf363f93),
              borderRadius:const BorderRadius.only(
                topLeft:Radius.circular(80.0),
              ),
              boxShadow:[
                new BoxShadow(
                  color:Color(0xFF360f93).withOpacity(0.3),
                  offset:new Offset(-10.0,0.0),
                  blurRadius:20.0,
                  spreadRadius:4.0,
                ),
              ],
            ),
            padding: const EdgeInsets.only(
              left:32,
              top:50.0,
              bottom:50.0,
            ),
            child: Column(
              children:<Widget>[
       Text(
         "THE BEST",
         style:TextStyle(color:Colors.white,fontSize:12),
       ),
       const SizedBox(height: 2,),
        Text(
         "Your Life starts here",
         style:TextStyle(color:Colors.white,fontSize:22,fontWeight: FontWeight.bold),
       ),
              ]
            ),
            ),
          ),
         SizedBox(height:height*0.05),
           Container(
            margin:  const EdgeInsets.only(bottom: 10,top:25),
            height: 200,
            padding:const EdgeInsets.only(left: 20,right:20,bottom:20),
            child: Container(
            decoration:BoxDecoration(
              color:Color(0xFf363f93),
              borderRadius:const BorderRadius.only(
                topRight:Radius.circular(80.0),
              ),
              boxShadow:[
                new BoxShadow(
                  color:Color(0xFF360f93).withOpacity(0.3),
                  offset:new Offset(-10.0,0.0),
                  blurRadius:20.0,
                  spreadRadius:4.0,
                ),
              ],
            ),
            padding: const EdgeInsets.only(
              left:32,
              top:50.0,
              bottom:50.0,
            ),
            child: Column(
              children:<Widget>[
       Text(
         "THE BEST",
         style:TextStyle(color:Colors.white,fontSize:12),
       ),
       const SizedBox(height: 2,),
        Text(
         "Your Life starts here",
         style:TextStyle(color:Colors.white,fontSize:22,fontWeight: FontWeight.bold),
       ),
              ]
            ),
            ),
          ),
        ],)
        ),
        )
        ],
      ),
    );
  }
}
