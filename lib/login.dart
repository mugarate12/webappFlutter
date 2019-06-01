import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'components/register_widget.dart' as register_widget;
import 'components/login_widget.dart' as login_widget;

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
    // HEADER
    final header = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF6A0080),
                Color(0xFF712680),
              ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // icone
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.person,
              size: MediaQuery.of(context).size.height / 10,
              color: Colors.white,
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  'Login/Register',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );

    // interface
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // encapsula todos os componentes da tela
        child: Column(
          children: <Widget>[
            // Header
            header,
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