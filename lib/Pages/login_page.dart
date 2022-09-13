import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child:
      Column(
             children: [
               Image.asset(
                 "assets/Login_Image.png",
                 fit: BoxFit.cover,
               ),
               SizedBox(height: 20,
               ),

               Text("Welcome",
                 style: TextStyle(
                 fontSize: 22,
                 fontWeight: FontWeight.bold,
               ),
               ),
               SizedBox(height: 20,
               ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("hii Rohit");
                    },
                      child:Text("Login"),
                    style:TextButton.styleFrom(),


                  )
                ],),
              )
             ],
           ),


    //     Center(child: Text("LoginPage",
    //     style:TextStyle(
    //       fontSize: 30,
    //       color: Colors.blue,
    //       fontWeight: FontWeight.bold        //bold the text
    //
    //     ),
    //     )
    // ),

       );



  }
}
