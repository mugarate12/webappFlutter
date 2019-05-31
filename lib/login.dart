import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/responsive_widget.dart' as ResponsiveWidget;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {

  TextStyle style = TextStyle( fontSize: 20.0);
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool isLogin = true;

  Widget _IsLogin(){

    if (isLogin){

      return _LoginWidget();

    } else {

      return _RegisterWidget();

    }

  }

  Widget _LoginWidget(){

      // Input de email
      Widget emailField = Container(

      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        left: 10,
        bottom: 5
      ),
      width: ResponsiveWidget.ResponsiveWidget.isSmallScreen(context) ?
          MediaQuery.of(context).size.width / 2 :
          MediaQuery.of(context).size.width / 3,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30)
        ),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black54,
        //     blurRadius: 20
        //   )
        // ]
      ),
      child: TextField(
        controller: emailController,
        obscureText: false,
        decoration: InputDecoration(
          hintText: 'email',
          hasFloatingPlaceholder: false,
        ),
      ),

    );
    // Input de senha
    Widget passowordField = Container(

      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        left: 10,
        bottom: 5
      ),
      width: ResponsiveWidget.ResponsiveWidget.isSmallScreen(context) ?
          MediaQuery.of(context).size.width / 2 :
          MediaQuery.of(context).size.width / 3,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30)
        ),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black54,
        //     blurRadius: 20
        //   )
        // ]
      ),
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'password',
          hasFloatingPlaceholder: false,
        ),
      ),

    );

    // botão de login
    Widget btnLogin = Material(

      borderRadius: BorderRadius.circular(32),
      child: MaterialButton(

        height: 20,
        minWidth: ResponsiveWidget.ResponsiveWidget.isSmallScreen(context) ?
          MediaQuery.of(context).size.width / 2 :
          MediaQuery.of(context).size.width / 3,
        color: Colors.purple,

        onPressed: (){
          
          print(emailController.text);
          print(passwordController.text);
          Navigator.pushNamed(context, '/table');

        },
        child: Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          )
        ),

      ),

    );

    Widget register = MaterialButton(

      padding: EdgeInsets.only(
        top: 10
      ),
      onPressed: (){

        print('ok, ta funcionando');
        setState(() {
          isLogin = false;
        });
      
      },
      child: Text(
        'You not have a account? Make one!'
      ),

    );

    return Column(
      children: <Widget>[
        emailField,
        passowordField,
        btnLogin,
        register
      ],
    );

  }

  Widget _RegisterWidget(){

    // input de email do cadastro
    Widget emailField = Container(

      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        left: 10,
        bottom: 5
      ),
      width: ResponsiveWidget.ResponsiveWidget.isSmallScreen(context) ?
          MediaQuery.of(context).size.width / 2 :
          MediaQuery.of(context).size.width / 3,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30)
        ),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black54,
        //     blurRadius: 20
        //   )
        // ]
      ),
      child: TextField(
        controller: emailController,
        obscureText: false,
        decoration: InputDecoration(
          hintText: 'email',
          hasFloatingPlaceholder: false,
        ),
      ),

    );
    // input de password do cadastro
    Widget passowordField = Container(

      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        left: 10,
        bottom: 5
      ),
      width: ResponsiveWidget.ResponsiveWidget.isSmallScreen(context) ?
          MediaQuery.of(context).size.width / 2 :
          MediaQuery.of(context).size.width / 3,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30)
        ),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black54,
        //     blurRadius: 20
        //   )
        // ]
      ),
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'password',
          hasFloatingPlaceholder: false,
        ),
      ),

    );
    // botão de registro
    Widget btnRegister = Material(

      borderRadius: BorderRadius.circular(32),
      child: MaterialButton(

        height: 20,
        // minWidth: MediaQuery.of(context).size.width / 4,
        minWidth: ResponsiveWidget.ResponsiveWidget.isSmallScreen(context) ?
          MediaQuery.of(context).size.width / 2 :
          MediaQuery.of(context).size.width / 3,
        color: Colors.purple,

        onPressed: (){
          
          print(emailController.text);
          print(passwordController.text);
          Navigator.pushNamed(context, '/table');

        },
        child: Text(
          'Register',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          )
        ),

      ),

    );

    Widget login = MaterialButton(

      padding: EdgeInsets.only(
        top: 10
      ),
      onPressed: (){

        print('ok, ta funcionando');
        setState(() {
          isLogin = true;
        });
      
      },
      child: Text(
        'You have a account? Enter now!'
      ),

    );

    return Column(
      children: <Widget>[
        emailField,
        passowordField,
        btnRegister,
        login
      ],
    );

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
                  'Login',
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