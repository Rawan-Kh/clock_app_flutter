import 'package:flutter/material.dart';
import 'package:starter_namer/screens/layout_screen.dart';
import 'package:starter_namer/screens/clock_screen.dart';



 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
   const  MyApp({Key? key}) : super(key: key);

  // root widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clock App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomeLayout(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar:AppBar(
        title: Text(""),
        centerTitle: true,
      ),
      body: profileView()
    );
  }
 
  Widget profileView() {
    return Column(
    
    );
  }
}