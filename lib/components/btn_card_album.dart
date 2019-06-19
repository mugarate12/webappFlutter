import 'package:flutter_web/material.dart';

import 'package:congrats/responsive_widget.dart' as responsive_widget;

class Btn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 5,
          right: responsive_widget.ResponsiveWidget.isSmallScreen(context)
              ? 5
              : 0),
      width: responsive_widget.ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 3.1,
      child: RaisedButton(
        onPressed: () {},
      ),
    );
  }
}
