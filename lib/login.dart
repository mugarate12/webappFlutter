import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/containers/register_widget.dart' as register_widget;
import 'package:congrats/containers/login_widget.dart' as login_widget;
import 'package:congrats/containers/header.dart' as header_widget;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {

  TextStyle style = TextStyle( fontSize: 20.0);

  // variavel que altera entre widget de login e de registro
  bool isLogin = true;

  // estados do login
  TextEditingController email_login_controller = new TextEditingController();
  TextEditingController password_login_controller = new TextEditingController();
  Function _LoginBtn(){

    Navigator.pushNamed(context, '/table');

  }
  Function _LoginSwitch(){

    setState(() {
      isLogin = false;
    });

  }

  // estados do registro
  TextEditingController email_register_controller = new TextEditingController();
  TextEditingController password_register_controller = new TextEditingController();
  Function _RegisterBtn(){

    Navigator.pushNamed(context, '/table');

  }
  Function _RegisterSwitch(){

    setState(() {
      isLogin = true;
    });

  }

  // função pra alterar entre login e registro
  Widget _IsLogin(){

    if (isLogin){

      return login_widget.Login(
        emailController: email_login_controller,
        passwordController: password_login_controller,
        btnFunction: _LoginBtn,
        switchFunction: _LoginSwitch,
      );

    } else {

      return register_widget.Register(
        emailController: email_register_controller,
        passwordController: password_register_controller,
        btnFunction: _RegisterBtn,
        switchFunction: _RegisterSwitch,
      );

    }

  }

  @override
  Widget build(BuildContext context) {

    // interface
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // encapsula todos os componentes da tela
        child: Column(
          children: <Widget>[
            // Header
            header_widget.Header(
              title: 'Login/Register',
              icon: Icons.person,
              actions: [],
            ),
            _IsLogin()
            // SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}