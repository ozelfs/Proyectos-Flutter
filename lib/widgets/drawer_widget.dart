import 'package:flutter/material.dart';
import 'package:sharedpreferences/src/home_page.dart';
import 'package:sharedpreferences/src/setting_page.dart';


class DrawerWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: <Widget>[
         DrawerHeader(
           child: Container(),
             decoration: BoxDecoration(
               image: DecorationImage(image: NetworkImage('https://www.inversorglobal.com/wp-content/uploads/2019/06/noruega.jpg'),fit: BoxFit.cover)
             ),
           
         ),
         ListTile(
           leading: Icon(Icons.pages),
           title: Text("pages"),
         onTap: (){
             Navigator.pushReplacementNamed(context, HomePage.routeName);
         },
         ),
          ListTile(
           leading: Icon(Icons.settings),
           title: Text("settings"),
           onTap: (){
            
             Navigator.pushReplacementNamed(context, SettingPage.routeName);
           },
         ),
          ListTile(
           leading: Icon(Icons.access_alarms),
           title: Text("week up"),
         ),
          ListTile(
           leading: Icon(Icons.shopping_basket),
           title: Text("get up"),
         )
       ],
     )
   );
  }
}