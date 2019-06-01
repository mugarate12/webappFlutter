import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';

class LoginOrRegister extends StatelessWidget{

  LoginOrRegister({Key key, this.loginOrNot, this.text}): super(key: key);
  final Function loginOrNot;
  final String text;

  @override
  Widget build(BuildContext context){

    return MaterialButton(

      padding: EdgeInsets.only(
        top: 10
      ),
      onPressed: (){

        loginOrNot();
      },
      child: Text(
        text
      ),

    );

  }

}