import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesUsuario{

  static final SharedPreferencesUsuario _instancia = new SharedPreferencesUsuario._internal();

  factory SharedPreferencesUsuario(){
    return _instancia;
  }

  SharedPreferencesUsuario._internal();


  SharedPreferences prefs;

  initPref() async{
    prefs = await SharedPreferences.getInstance();
  }


  get getColorSecunadario{
    return prefs.getBool("colorSecundario")?? false;
  }
  set setColorSecundario(bool value){
    prefs.setBool("colorSecundario", value);
  }

  //set y get para genero

  get getGenero{
    return prefs.getInt("genero") ?? 1;
  }

  set setGnero(int value){
    prefs.setInt("genero", value);
  }

  get getNombre{
    return prefs.getString("nombre") ?? '';
  }

  set setNombre(String value){
    prefs.setString("nombre", value);
  }


}