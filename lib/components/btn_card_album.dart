import 'package:flutter_web/material.dart';

import 'package:congrats/responsive_widget.dart' as responsive_widget;

class Btn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        // right:
        //     responsive_widget.ResponsiveWidget.isSmallScreen(context) ? 5 : 0,
      ),
      width: MediaQuery.of(context).size.width / 15,
      child: RaisedButton(
        onPressed: () {},
      ),
    );
  }
}
