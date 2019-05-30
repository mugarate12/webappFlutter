import 'package:flutter_web/material.dart';

// import das telas
import 'package:congrats/homepage.dart' as homepage;
import 'package:congrats/login.dart' as login;
import 'package:congrats/table_diagram.dart' as table;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Congrats',
      theme: ThemeData(
    
        // brightness: Brightness.dark,
        primarySwatch: Colors.blue,
    
      ),
    
      home: homepage.HomePage(title: 'Congrats'),
      routes: <String, WidgetBuilder>{

        '/login': (BuildContext context) => login.Login(),
        '/table': (BuildContext context) => table.Table()

      },
    
    );

  }

}