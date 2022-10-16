import 'package:flutter/material.dart';
class  MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl="https://media-exp1.licdn.com/dms/image/D5635AQHssyCuTuhJAA/profile-framedphoto-shrink_400_400/0/1642341683760?e=1666508400&v=beta&t=i-oCa2gpMSNcBvZae7t5WcFT4R3wnvmV1_50CdAUCug";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,

              child:UserAccountsDrawerHeader(accountName:Text("Rohit Prakash") ,
                accountEmail: Text("rishiisingh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
