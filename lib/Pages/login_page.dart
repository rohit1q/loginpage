
import 'package:flutter/material.dart';
import 'package:pro/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changebutton=false;
  final _formkey=GlobalKey<FormState>();
  moveToHome(BuildContext Context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(
          context, MyRoutes.homeRoute); //navigator- change to next screen
      setState(() {
        changebutton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child:
      SingleChildScrollView(
        child: Form(
          key:_formkey ,
          child: Column(
                 children: [
                   Image.asset(
                     "assets/avtar.png",
                     fit: BoxFit.cover,
                   ),
                   SizedBox(height: 20,
                   ),

                   Text("Welcome $name",
                     style: TextStyle(
                     fontSize: 28,
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
                        validator: (value) {
                          if (value!.isEmpty){
                            return "user name can't be empty";
                          }
                          return null;
                        },
                          onChanged: (value){
                            name=value;
                            setState(() {});
                            //change the ui ,welcome text change acc to input by user
                          }

                            ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                          validator: (value) {
                            if (value!.isEmpty){
                              return "password can't be empty";
                            }else if ( value.length<6){
                              return "password length should be atleast 6 be empty";
                            }
                            return null;
                          },



                      ),
                      SizedBox(height: 20,
                      ),
                      Material(
                        color: Colors.deepPurple,
                          borderRadius:
                          BorderRadius.circular(changebutton?20:8),
                        child: InkWell(
                          onTap:()=>moveToHome(context),

                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebutton?50:150,
                            height: 50,
                            alignment: Alignment.center,
                            child:changebutton
                            ?Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                            : Text("login",
                              style:TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:18),

                            ),
                            //  decoration: BoxDecoration(
                            // //   color: Colors.deepPurple,
                            //   // shape: changebutton?
                            //   //   BoxShape.circle
                            //   //  : BoxShape.rectangle,
                            //  ),
                          ),
                      ),
                      ),
                      //   ElevatedButton(
                      //    onPressed: () {
                      //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //    },
                      //     child:Text("Login"),
                      //       style:TextButton.styleFrom(
                      //       minimumSize:Size(150, 40) ),
                      //
                      //
                      // )
                    ],),
                  )
                 ],
               ),
        ),
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
