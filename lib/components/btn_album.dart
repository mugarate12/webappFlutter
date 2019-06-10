import 'package:flutter_web/material.dart';
import 'package:congrats/responsive_widget.dart' as responsive_widget;

class BtnAlbum extends StatelessWidget {
  BtnAlbum({Key key, this.icon, this.function_btn, this.id_value})
      : super(key: key);

  final IconData icon;
  final Function function_btn;
  final int id_value;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
        child: Container(
          width: MediaQuery.of(context).size.width /  15,
          child: RaisedButton(
            colorBrightness: Brightness.light,
            onPressed: (){
              function_btn(id_value);
            },
            child: Center(
              child: Icon(
                icon,
                size: 20,
                ),
            ),
          ),
        ));
  }
}
