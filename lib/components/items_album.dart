import 'package:flutter_web/material.dart';

import 'package:congrats/responsive_widget.dart' as responsive_widget;

class Items extends StatelessWidget {

  Items({
    Key key,
    this.homenageados,
    this.data_e_hora,
    this.endereco,
    this.local_da_festa
  })
  :super(key: key);

  final String homenageados;
  final String data_e_hora;
  final String endereco;
  final String local_da_festa;

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
              // title: Text('Endereço'),
              title: Text(endereco),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              onTap: () {
                print('ok and ${MediaQuery.of(context).size.width / 4.7}');
              },
              leading: Icon(Icons.location_searching),
              // title: Text('Referência'),
              title: Text(local_da_festa),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              onTap: () {
                print('ok and ${MediaQuery.of(context).size.width / 4.7}');
              },
              leading: Icon(Icons.cake),
              // title: Text('Homenageado'),
              title: Text(homenageados),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              onTap: () {
                print('ok and ${MediaQuery.of(context).size.width / 4.7}');
              },
              leading: Icon(Icons.date_range),
              // title: Text('Data(Provisoria)'),
              title: Text(data_e_hora),
            ),
          ),
        ],
      )
    );
  }
}
