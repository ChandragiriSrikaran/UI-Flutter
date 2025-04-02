import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo of Flutter Layouts'),
        ),
        body: Center(
          child: Container(
            height: 700,
            width: 700,
            color: Colors.purple,
            child: GridView.count(
                crossAxisCount: 2,

                children:[
                  Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // spacing: 60,
                      children: [
                        Container(
                          // color: Colors.black,
                          child: Icon(Icons.home),
                        ),
                        Container(
                          child: Text("data")
                        ),
                        Container(
                          child: ElevatedButton(onPressed:()=>{}, child: Text("Button"))
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 60,
                      children: [
                        Container(
                          // color: Colors.black,
                          child: Icon(Icons.home),
                        ),
                        Container(
                            child: Text("data")
                        ),
                        Container(
                            child: ElevatedButton(onPressed:()=>{}, child: Text("Button"))
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Stack(

                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(child:Text('data'),
                          left: 40,
                          top: 60,
                        ),
                        Positioned(child:Icon(Icons.access_alarm_rounded,size: 30,),
                          left: 300,
                          top: 60,
                        ),
                        Positioned(child:ElevatedButton(onPressed: ()=>{}, child: Icon(Icons.add_call,size: 30)),
                          left: 140,
                          top: 60,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    child: Stack(

                      alignment: Alignment.topCenter,
                      children: [
                        
                      ]
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
