import 'package:flutter/material.dart';
import 'package:navigation/NavigationDemo/page1.dart';
import 'package:navigation/NavigationDemo/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    void add(){
      print("abc");
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                ElevatedButton(onPressed:()=>{
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PageOne()),
                ),
                }, child: Text("page 1",
                  style: TextStyle(fontSize: 20),
                )),

                ElevatedButton(onPressed:()=>{
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PageTwo()),
                ),
                }, child: Text("page 2",
                  style: TextStyle(fontSize: 20),
                )),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


