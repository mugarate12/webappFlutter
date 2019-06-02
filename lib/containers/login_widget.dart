import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/responsive_widget.dart' as ResponsiveWidget;
import 'package:congrats/components/textinput_login.dart' as text_input;
import 'package:congrats/components/btn_login.dart' as login_btn;
import 'package:congrats/components/login_or_register.dart' as login_or_register;

class Login extends StatelessWidget{

  Login({
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
        login_btn.ButtonLogin(functionBtn: btnFunction, btnName: 'Login'),
        login_or_register.LoginOrRegister(loginOrNot: switchFunction, text: 'You not have a account? Make one!')
      ],
    );

  }

}