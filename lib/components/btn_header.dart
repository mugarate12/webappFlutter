import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';

class ButtonHeader extends StatelessWidget{

  ButtonHeader({
    Key key,
    this.functionbtn,
    this.iconBtn
  }): super(key: key);

  final Function functionbtn;
  final IconData iconBtn;

  @override
  Widget build(BuildContext context){

    return MaterialButton(
      onPressed: functionbtn,
      child: Icon(
        iconBtn,
        size: MediaQuery.of(context).size.height / 20,
        color: Colors.white
      ),

    );

  }

}