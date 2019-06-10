import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/responsive_widget.dart' as responsive_widget;

class TextInput extends StatelessWidget{

  TextInput({
    Key key, 
    this.controllerInput,
    this.hintText,
    this.labelText
  }): super(key: key);
  final TextEditingController controllerInput;
  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context){

    return Container(

      margin: EdgeInsets.only(
        top: 10,
        bottom: 10
      ),
      padding: EdgeInsets.only(
        // left: 10,
        bottom: 5
      ),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.all(
        //   Radius.circular(30)
        // ),
        color: Colors.white,
      ),
      child: TextField(
        controller: controllerInput,
        obscureText: false,
        decoration: InputDecoration(
          // nome do campo
          labelText: labelText,
          // quando clicar, nome dentro do campo
          hintText: hintText,
          hasFloatingPlaceholder: false,
        ),
      ),

    );

  }

}