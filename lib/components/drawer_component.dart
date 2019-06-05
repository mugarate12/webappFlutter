import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
import 'package:flutter_web/widgets.dart';

class DrawerComponent extends StatelessWidget {
  DrawerComponent({Key key, this.icon, this.btnFunction, this.nameComponent})
      : super(key: key);
  final IconData icon;
  final Function btnFunction;
  final String nameComponent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.black,
            ),
            MaterialButton(
              onPressed: () {
                btnFunction();
              },
              child: Text(nameComponent),
            )
          ],
        ),
      ),
    );
  }
}
