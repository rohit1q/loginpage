import 'package:flutter/material.dart';
import 'package:pro/widget/drawer.dart';
class homepage extends StatelessWidget {
  final int days =7;
  final String name="Rohit";

  const homepage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile Page")),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days days of my flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
