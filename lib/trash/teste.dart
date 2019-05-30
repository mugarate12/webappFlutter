import 'package:flutter_web/material.dart';
import 'package:congrats/responsive_widget.dart';

class Teste extends StatelessWidget {

  TextStyle style = TextStyle( fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final loginBtn = Material(
      
      elevation: 5.0,
      borderRadius: BorderRadius.circular(32.0),
      color: Color(0xFF01A0C7),
      child: MaterialButton(
        // height: 0.1,
        minWidth: 1,
        // padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
        onPressed: () {},
        child: Text(
          'Login',
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),

      ),

    );

    return Center(
      child: ResponsiveWidget(
        largeScreen:  Scaffold(
          body: loginBtn,
        )
      ),
    );
  }
}
