import 'package:flutter/material.dart';
import 'package:mynewappfortoday/Screens/Discover.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
       
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Discover();
            }));
          },
          child: Row(
            children: [Text("Discover our App"),SizedBox(width: 10,), Icon(Icons.search)],
          ),
        )
      ],  title: Row(children: [Text("Home Page"),Icon(Icons.home)],)),
      body: Center(
        child: Text("hello from home"),
      ),
    );
  }
}
