import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/responsive_widget.dart' as responsive_widget;

class ButtonLogin extends StatelessWidget{

  ButtonLogin({Key key, this.btnName, this.functionBtn}): super(key: key);
  final String btnName;
  final Function functionBtn;

  @override
  Widget build(BuildContext context){

    return Material(

      borderRadius: BorderRadius.circular(32),
      child: MaterialButton(

        height: 20,
        // minWidth: MediaQuery.of(context).size.width / 4,
        minWidth: responsive_widget.ResponsiveWidget.isSmallScreen(context) ?
          MediaQuery.of(context).size.width / 2 :
          MediaQuery.of(context).size.width / 3,
        color: Colors.purple,

        onPressed: (){
          
          functionBtn();

        },
        child: Text(
          btnName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          )
        ),

      ),

    );

  }

}