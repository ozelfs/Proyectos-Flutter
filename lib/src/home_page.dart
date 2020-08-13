import 'package:flutter/material.dart';
import 'package:sharedpreferences/src/setting_page.dart';
import 'package:sharedpreferences/src/shared_preferences.dart';
import 'package:sharedpreferences/widgets/drawer_widget.dart';
class HomePage extends StatelessWidget {

  static final String routeName= 'home';

  final prefs = new SharedPreferencesUsuario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ozel"),
        centerTitle: true,
        backgroundColor: (prefs.getColorSecunadario) ? Colors.green : Colors.red,
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Color secundario: ${prefs.getColorSecunadario}'),
            Divider(),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text('genero:'),
                 SizedBox(width: 40,),
                 Text(prefs.getGenero == 1 ? 'hombre' : 'mujer')
               ],
             ),
             Divider(),
              Text('Nombre usuario: ${prefs.getNombre}'),
          ],
        ),
      ),
    );
  }

 Widget crearMenu(BuildContext context) {
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