import 'package:flutter_web/material.dart';

import 'package:congrats/responsive_widget.dart' as responsive_widget;

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              onTap: () {
                print('ok and ${MediaQuery.of(context).size.width / 4.7}');
              },
              leading: Icon(Icons.location_city),
              title: Text('Endereço'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              onTap: () {
                print('ok and ${MediaQuery.of(context).size.width / 4.7}');
              },
              leading: Icon(Icons.location_searching),
              title: Text('Referência'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              onTap: () {
                print('ok and ${MediaQuery.of(context).size.width / 4.7}');
              },
              leading: Icon(Icons.cake),
              title: Text('Homenageado'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              onTap: () {
                print('ok and ${MediaQuery.of(context).size.width / 4.7}');
              },
              leading: Icon(Icons.date_range),
              title: Text('Data(Provisoria)'),
            ),
          ),
        ],
      )
    );
  }
}
