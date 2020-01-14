import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
          home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
        accentColor: Colors.cyanAccent
      ),
      
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String mytext ="Hello Everyone";
  void _changeText()
  {
    setState(() {
      if(mytext.startsWith("H"))
        {
          mytext="Welcome everyone";

        }
      else{
        mytext="Hello everyone";
      }
    });
  }

  Widget _bodyWidget(){
    return Container(
      padding: const EdgeInsets.all(8.0),
     child: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text(mytext,style: new TextStyle(
             fontSize: 25.0,
           )),

         ],
       ),
     ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     title: Text("Ranshikha's App"),
   ) ,
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}
