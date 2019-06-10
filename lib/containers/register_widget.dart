import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/responsive_widget.dart' as responsive_widget;
import 'package:congrats/components/textinput.dart' as text_input;
import 'package:congrats/components/btn_login.dart' as login_btn;
import 'package:congrats/components/login_or_register.dart'
    as login_or_register;

class Register extends StatelessWidget {
  Register(
      {Key key,
      this.emailController,
      this.passwordController,
      this.adressController,
      this.contactController,
      this.btnFunction,
      this.switchFunction
      })
      : super(key: key);
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController adressController;
  final TextEditingController contactController;
  final Function btnFunction;
  final Function switchFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsive_widget.ResponsiveWidget.isSmallScreen(context) ?
          MediaQuery.of(context).size.width / 2 :
          MediaQuery.of(context).size.width / 2.5,
      child: Column(
        children: <Widget>[
          text_input.TextInput(
              controllerInput: emailController, hintText: 'exemplo@gmail.com', labelText: 'email'),
          text_input.TextInput(
              controllerInput: passwordController, hintText: 'suaSenha123', labelText: 'password'),
          text_input.TextInput(
              controllerInput: adressController,
              hintText: 'Rua Fernandes Lima - São Freitas',
              labelText: 'Endereço',
          ),
          text_input.TextInput(
            controllerInput: contactController,
            hintText: '(82)99226-6454',
            labelText: 'Contato',
          ),
          login_btn.ButtonLogin(functionBtn: btnFunction, btnName: 'Register'),
          login_or_register.LoginOrRegister(
              loginOrNot: switchFunction,
              text: 'You have a account? Enter now!')
        ],
      ),
    );
  }
}
