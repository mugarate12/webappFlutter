import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/responsive_widget.dart' as ResponsiveWidget;
import 'package:congrats/components/textinput_login.dart' as text_input;
import 'package:congrats/components/btn_login.dart' as login_btn;
import 'package:congrats/components/login_or_register.dart' as login_or_register;

// class Register extends StatefulWidget{

//   @override
//   _RegisterState createState() => new _RegisterState();

// }

// class _RegisterState extends State<Register>{

//   @override
//   Widget build(BuildContext context){

//     return Text('data');

//   }

// }
class Register extends StatelessWidget{

  Register({
    Key key,
    this.emailController,
    this.passwordController,
    this.btnFunction,
    this.switchFunction
  }): super(key: key);
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function btnFunction;
  final Function switchFunction;

  @override
  Widget build(BuildContext context){

    return Column(
      children: <Widget>[
        text_input.TextInput(controllerInput: emailController, hintText: 'email'),
        text_input.TextInput(controllerInput: passwordController, hintText: 'password'),
        login_btn.ButtonLogin(functionBtn: btnFunction, btnName: 'Register'),
        login_or_register.LoginOrRegister(loginOrNot: switchFunction, text: 'You have a account? Enter now!')
      ],
    );

    // return login_btn.ButtonLogin(btnName: 'Register', functionBtn: functionBtn);
    // return login_or_register.LoginOrRegister(loginOrNot: loginOrNot);

    // return text_input.TextInput(
    //   controllerInput: emailController,
    //   hintText: 'EMAIL',
    // );

    // Widget emailField = Container(

    //   margin: EdgeInsets.all(10),
    //   padding: EdgeInsets.only(
    //     left: 10,
    //     bottom: 5
    //   ),
    //   width: ResponsiveWidget.ResponsiveWidget.isSmallScreen(context) ?
    //       MediaQuery.of(context).size.width / 2 :
    //       MediaQuery.of(context).size.width / 3,
    //   height: 50,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(30)
    //     ),
    //     color: Colors.white,
    //     // boxShadow: [
    //     //   BoxShadow(
    //     //     color: Colors.black54,
    //     //     blurRadius: 20
    //     //   )
    //     // ]
    //   ),
    //   child: TextField(
    //     controller: emailController,
    //     obscureText: false,
    //     decoration: InputDecoration(
    //       hintText: 'email',
    //       hasFloatingPlaceholder: false,
    //     ),
    //   ),

    // );

    // return emailField;

  }

}