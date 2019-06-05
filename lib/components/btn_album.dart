import 'package:flutter_web/material.dart';

class BtnAlbum extends StatelessWidget {
  BtnAlbum({Key key, this.color, this.icon, this.function_btn, this.id_value})
      : super(key: key);

  final Color color;
  final IconData icon;
  final Function function_btn;
  final int id_value;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
        child: Container(
          width: MediaQuery.of(context).size.width / 20,
          child: RaisedButton(
            color: color,
            colorBrightness: Brightness.light,
            onPressed: (){
              function_btn(id_value);
            },
            child: Icon(icon),
          ),
        ));
  }
}
