import 'package:flutter/material.dart';

import 'package:ucabdemicsmobile/Views/Register/register_page.dart';
import 'package:ucabdemicsmobile/sources/Components/navigation_bar.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxHeight < 800){

          return Scaffold(
            body: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              children: <Widget>[
                logosmall01(),
                SizedBox(height: 20.0,),
                _primarytext('Iniciar Sesion', '\nInicia sesión para continuar con la aplicación',40.0,10.0),
                SizedBox(height: 40.0,),
                _inputemail(),
                _inputpassword(),
                SizedBox(height: 30.0,),
                _loginbutton(1,32.0),
                SizedBox(height: 60.0,),
                Center(child:Text('¿No tienes Cuenta?', style: TextStyle(color:Colors.grey),)),
                _finalpiece(1),
              ],
            ),
          );

        } else {

          return Scaffold(
            body: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              children: <Widget>[
                logosmall01(),
                SizedBox(height: 100.0,),
                _primarytext('Iniciar Sesion', '\nInicia sesión para continuar con la aplicación',45.0,21.0),
                SizedBox(height: 50.0,),
                _inputemail(),
                SizedBox(height: 20.0,),
                _inputpassword(),
                SizedBox(height: 80.0,),
                _loginbutton(1.3, 45.0),
                SizedBox(height: 70.0,),
                Center(child:Text('¿No tienes Cuenta?', style: TextStyle(color:Colors.grey, fontSize: 18),)),
                _finalpiece(1.4),
              ],
            ),
          );

        }
      },
    );
  }

  Widget _primarytext(String titulo, String titulo2, double fontsize1, double fontsize2) {

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: titulo,
            style: TextStyle(
              color: Colors.black,
              fontFamily: mainFont,
              fontWeight: FontWeight.normal,
              fontSize: fontsize1,
            )
          ),
          TextSpan(
            text: titulo2,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: mainFont,
              fontWeight: FontWeight.normal,
              fontSize: fontsize2,
            ),
          ),
        ],
      ),
    );

  }

  Widget _inputemail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'usuario@ucab.est.edu.ve',
        labelText: 'Email',
        suffixIcon: Icon(Icons.perm_identity),
      ),
      onChanged: (valor){
        _email = valor;
      },
    );

  }

  Widget _inputpassword() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Constraseña',
        suffixIcon: Icon(Icons.visibility),
      ),
      onChanged: (valor){
        _password = valor;
      },
    );

  }


  Widget _loginbutton(double textscale, double heightbutton) {

    return Container(
      height: heightbutton,
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            myBlue,
            myGreen,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child:FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: Colors.white10,
        onPressed: () {

          final route = MaterialPageRoute(
            builder: ( context ) => Navigation()
          );

          Navigator.push(context, route);

        },
        child: Text("Iniciar Sesión", textScaleFactor: textscale,),
      ),
    );

  }

  Widget _finalpiece(double fontsize) {

    return Container(
      height: 30,
      width: 40,
      padding: EdgeInsets.all(0.0),
      child:FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textColor: Colors.blue,
        onPressed: () {

          final route = MaterialPageRoute(
            builder: ( context ) => Registerpage()
          );

          Navigator.push(context, route);

        },
        child: Text("Registrarse", textScaleFactor: fontsize,),
      ),
    );
  }


}