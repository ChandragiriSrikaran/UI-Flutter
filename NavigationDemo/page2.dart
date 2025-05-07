import 'package:flutter/material.dart';
import 'package:navigation/NavigationDemo/main.dart';
class PageTwo extends StatelessWidget{
  const PageTwo({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('This is page two'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.black38,
              border: Border.all(
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed:()=>{
                Navigator.of(context).pop(),
              }, child:Text('Previous')),
              ElevatedButton(onPressed:()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                ),
              }, child: Text("Next",
                style: TextStyle(fontSize: 20),
              )),
            ],
          ),
        ),
      ),
    );
  }
}