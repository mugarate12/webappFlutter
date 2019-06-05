import 'package:flutter_web/material.dart';
import 'package:congrats/containers/header.dart' as header_widget;
import 'package:congrats/components/btn_header.dart' as btn_header;
import 'package:congrats/containers/home_widget.dart' as home_widget;

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    // interface
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            // HEADER
            header_widget.Header(
              icon: Icons.show_chart,
              title: 'Apresentação',
              actions: [
                btn_header.ButtonHeader(
                  functionbtn: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  iconBtn: Icons.skip_next
                )
              ],
            ),
            home_widget.Home()
          ],
        ),
      ),
    );
  }
}
