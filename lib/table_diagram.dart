import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
// imports do Header
import 'components/drawer_component.dart' as drawer_component;
import 'package:congrats/containers/header.dart' as header_widget;
import 'package:congrats/components/btn_header.dart' as btn_header;
// imports da tela
import 'package:congrats/containers/new_album_widget.dart' as new_album_widget;
import 'package:congrats/containers/show_albuns_widget.dart' as show_albuns_widget;

class Table extends StatefulWidget {
  @override
  _TableState createState() => new _TableState();
}

class _TableState extends State<Table> {
  
  bool isInsertOrDisplay = true;
  String display_actual_form = 'novo albúm';

  Function _Drawer1() {
    setState(() {
      isInsertOrDisplay = true;
      display_actual_form = 'novo albúm';
      Navigator.pop(context);
    });
  }

  Function _Drawer2() {
    setState(() {
      isInsertOrDisplay = false;
      display_actual_form = 'meus albúns';
      Navigator.pop(context);
    });
  }

  Function _menuFunction() {}

  Widget _TwoWidgets() {
    if (isInsertOrDisplay) {
      return new_album_widget.NewAlbum();
    } else {
      return show_albuns_widget.ShowAlbuns();
    }
  }

  @override
  Widget build(BuildContext context) {
    // interface
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // itens do Drawer
            drawer_component.DrawerComponent(
              icon: Icons.create_new_folder,
              btnFunction: _Drawer1,
              nameComponent: 'Novo albúm',
            ),
            drawer_component.DrawerComponent(
              icon: Icons.slideshow,
              btnFunction: _Drawer2,
              nameComponent: 'Meus albuns',
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
                  title: 'Table/$display_actual_form',
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
