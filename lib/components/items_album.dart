import 'package:flutter_web/material.dart';

import 'package:congrats/responsive_widget.dart' as responsive_widget;

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        direction: Axis.horizontal,
        alignment: responsive_widget.ResponsiveWidget.isLargeScreen(context)
            ? WrapAlignment.spaceEvenly
            : WrapAlignment.start,
        children: <Widget>[
          Container(
            width: 192,
            child: ListTile(
              onTap: () {
                print('ok and ${MediaQuery.of(context).size.width / 4.7}');
              },
              leading: Icon(Icons.location_city),
              title: Text('endereço'),
            ),
          ),
          Container(
            width: 192,
            child: ListTile(
              onTap: () {
                print('ok');
              },
              leading: Icon(Icons.cake),
              title: Text(
                'homenageado',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            width: 192,
            child: ListTile(
              onTap: () {
                print('ok');
              },
              leading: Icon(Icons.date_range),
              title: Text('data(provisoria)'),
            ),
          ),
          Container(
            width: 192,
            child: ListTile(
              onTap: () {
                print('ok');
              },
              leading: Icon(Icons.location_searching),
              title: Text('referência'),
            ),
          ),
        ],
      ),
    );
  }
}
