import 'package:flutter_web/material.dart';

class Table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    right: MediaQuery.of(context).size.width / 2),
                child: Icon(
                  Icons.person,
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
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );

    return Scaffold();
  }
}
