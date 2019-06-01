import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'components/drawer_component.dart' as drawer_component;

class Table extends StatefulWidget {
  @override
  _TableState createState() => new _TableState();
}

class _TableState extends State<Table> {

  bool choice = true;

  Function _Drawer1(){

    setState(() {
      choice = true;
      Navigator.pop(context);
    });

  }

  Function _Drawer2(){

    setState(() {
      choice = false;
      Navigator.pop(context);
    });

  }

  Widget _TwoWidgets(){

    if(choice){

      return Center(

        child: Text(
          'PAGE 1'
        ),

      );

    } else {

      return Center(

        child: Text(
          'PAGE 2'
        ),

      );

    }

  } 

  @override
  Widget build(BuildContext context) {
    // HEADER
    final header = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF6A0080),
                Color(0xFF712680),
              ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Menu
              Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 40),
                  child: Builder(
                    builder: (context) {
                      return MaterialButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Icon(Icons.menu,
                            size: MediaQuery.of(context).size.height / 12,
                            color: Colors.white),
                      );
                    },
                  )),
              // icone
              Padding(
                // alignment: Alignment.center,
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 2.2),
                child: Icon(
                  Icons.table_chart,
                  size: MediaQuery.of(context).size.height / 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  'Table',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );

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
        child: Column(
          
          children: <Widget>[
            // HEADER
            header,
            _TwoWidgets()
          ],

        ),

      ),

    );
  }
}
