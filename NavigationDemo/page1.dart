import 'package:flutter/material.dart';
import 'package:navigation/NavigationDemo/page2.dart';
class PageOne extends StatelessWidget{
  const PageOne({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('This is page one'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
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
                  MaterialPageRoute(builder: (context) => const PageTwo()),
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