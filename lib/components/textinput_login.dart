import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/responsive_widget.dart' as responsive_widget;

class TextInput extends StatelessWidget{

  TextInput({
    Key key, 
    this.controllerInput,
    this.hintText
  }): super(key: key);
  final TextEditingController controllerInput;
  final String hintText;

  @override
  Widget build(BuildContext context){

    return Container(

      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        left: 10,
        bottom: 5
      ),
      width: responsive_widget.ResponsiveWidget.isSmallScreen(context) ?
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
        controller: controllerInput,
        obscureText: false,
        decoration: InputDecoration(
          hintText: hintText,
          hasFloatingPlaceholder: false,
        ),
      ),

    );

  }

}