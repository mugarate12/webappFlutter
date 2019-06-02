import 'package:flutter_web/material.dart';
import 'package:congrats/containers/header.dart' as header_widget;
import 'package:congrats/components/btn_header.dart' as btn_header;

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
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Congrats'
                    ),
                    Text(
                      'oo'
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
