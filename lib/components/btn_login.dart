import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/responsive_widget.dart' as responsive_widget;

class ButtonLogin extends StatefulWidget{

  ButtonLogin({Key key, this.btnName, this.functionBtn}): super(key: key);
  final String btnName;
  final Function functionBtn;

  _ButtonLoginState createState() => new _ButtonLoginState();

}

class _ButtonLoginState extends State<ButtonLogin>{

  bool is_loading = false;

  Widget _loading_or_not(){

    return is_loading ?
      CircularProgressIndicator() :
      Material(

      borderRadius: BorderRadius.circular(32),
      child: MaterialButton(

        height: 20,
        minWidth: MediaQuery.of(context).size.width,
        color: Colors.purple,

        onPressed: (){
          
          setState(() {
            is_loading = true;
          });
          // aqui caberá a lógica onde, se a requisição for bem sucedida
          // seta o valor de "is_loading" pra false, liberando o botão
          // isso, claro, depois das ações que deveriam ser feitas serem concluidas
          widget.functionBtn();

        },
        child: Text(
          widget.btnName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          )
        ),

      ),

    );

  }

  @override
  Widget build(BuildContext context){

    return _loading_or_not();

  }

}