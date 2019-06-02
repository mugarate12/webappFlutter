import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:congrats/components/btn_header.dart' as btn_header;

class Header extends StatelessWidget{

  Header({
    Key key,
    this.icon,
    this.title,
    this.actions
  }): super(key: key);

  final IconData icon;
  final String title;
  final List<btn_header.ButtonHeader> actions;

  Widget _buildActions(){

    return Row(
      children: actions,
    );

  }

  @override
  Widget build(BuildContext context){
    
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
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
              icon,
              size: MediaQuery.of(context).size.height / 10,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // actions
              _buildActions(),
              Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ))
            ],
          )
        ],
      ),
    );

  }

}