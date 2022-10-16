import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro/Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro/Pages/login_page.dart';
import 'package:pro/utils/routes.dart';


void main(){
  runApp(rohitApp());
}

class rohitApp extends StatelessWidget {
  const rohitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*  int days =7;
    String name="Rohit";
    pi =3.14;
    bool isMale = true;
    num temp =30.5;

    var day= "tuesday";
    const pi =3.14;
    //final is also like const but difference is the value pf final is being modify but const is not.
    //in final we can do addition in list.*/
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: GoogleFonts.nunito().fontFamily,
         // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
debugShowCheckedModeBanner: false, //to remove debug from left cornor
      darkTheme: ThemeData(


        brightness: Brightness.light,  //properties override according to dark
      ),
      initialRoute: MyRoutes.homeRoute,    //we can call any page
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>homepage(),
        MyRoutes.loginRoute:(context)=>LoginPage()
      },
    );
  }
}
