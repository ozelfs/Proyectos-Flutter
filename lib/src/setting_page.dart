import 'package:flutter/material.dart';
import 'package:sharedpreferences/src/shared_preferences.dart';
import 'package:sharedpreferences/widgets/drawer_widget.dart';

class SettingPage extends StatefulWidget {
  static final String routeName = 'setting';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _color;
  String _nombre;
  int _genero;

  TextEditingController _controllNombre;

  final prefs = new SharedPreferencesUsuario();

  @override
  void initState() { 
    super.initState();

  // prefs.setColorSecundario=_color;
    _color=prefs.getColorSecunadario;
    _genero=prefs.getGenero;
    _nombre = prefs.getNombre;
    

    _controllNombre=new TextEditingController(text: _nombre);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'),
        backgroundColor: (prefs.getColorSecunadario) ? Colors.red : Colors.green,
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: <Widget>[
          SwitchListTile(
              value: _color, title: Text("Color app"), onChanged: (value){
                _color=value;
                prefs.setColorSecundario=value;
                setState(() {
                  
                });
              }),
          RadioListTile(title: Text("hombre"),value: 1, groupValue: _genero, onChanged: (value){
           _genero=value;
           prefs.setGnero=value;
           setState(() {
             
           });
          }),
          RadioListTile(title: Text("mujer"),value: 2, groupValue: _genero, onChanged: (value){
            _genero=value;
            prefs.setGnero=value;
            setState(() {
              
            });
          }),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _controllNombre,
              onChanged: (value){
                prefs.setNombre=value;
              },
              decoration: InputDecoration(
                hintText: 'nombre'
              ),
            ),
          )
        ],
      ),
    );
  }
}
