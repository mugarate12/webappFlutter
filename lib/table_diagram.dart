import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'components/drawer_component.dart' as drawer_component;
import 'package:congrats/containers/header.dart' as header_widget;
import 'package:congrats/components/btn_header.dart' as btn_header;

class Table extends StatefulWidget {
  @override
  _TableState createState() => new _TableState();
}

class _TableState extends State<Table> {
  bool choice = true;
  bool ping = true;

  Function _Drawer1() {
    setState(() {
      choice = true;
      print(MediaQuery.of(context).size.width / 40);
      Navigator.pop(context);
    });
  }

  Function _Drawer2() {
    setState(() {
      choice = false;
      Navigator.pop(context);
    });
  }

  Function _menuFunction() {
    print('ok');
  }

  Widget _TwoWidgets() {
    if (choice) {
      return Center(
        child: Text('PAGE 1'),
      );
    } else {
      return Center(
        child: Text('PAGE 2'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // interface
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // itens do Drawer
            drawer_component.DrawerComponent(
              icon: Icons.aspect_ratio,
              btnFunction: _Drawer1,
              nameComponent: 'Page A',
            ),
            drawer_component.DrawerComponent(
              icon: Icons.access_alarm,
              btnFunction: _Drawer2,
              nameComponent: 'Page B',
            )
          ],
        ),
      ),
      body: Container(
          // encapsula todos os componentes da tela
          child: Builder(
        builder: (context) {
          return Column(
            children: <Widget>[
              // HEADER
              header_widget.Header(
                  title: 'Table',
                  icon: Icons.table_chart,
                  actions: [
                    btn_header.ButtonHeader(
                        functionbtn: () {
                          _menuFunction();
                          Scaffold.of(context).openDrawer();
                        },
                        iconBtn: Icons.menu)
                  ]),
              _TwoWidgets()
            ],
          );
        },
      )),
    );
  }
}
