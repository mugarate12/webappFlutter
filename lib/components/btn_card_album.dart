import 'package:flutter_web/material.dart';


class Btn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
      ),
      width: MediaQuery.of(context).size.width / 15,
      child: RaisedButton(
        onPressed: () {},
      ),
    );
  }
}
