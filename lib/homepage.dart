import 'package:flutter_web/material.dart';

class HomePage extends StatelessWidget {

  HomePage({Key key, this.title}): super(key: key);
  final String title;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      
      appBar: AppBar(

        title: Text(
          'Apresentation'
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.skip_next),
            tooltip: 'next page',
            onPressed: () => Navigator.pushNamed(context, '/login'),
          )
        ],

      ),
      body: Center(

        child: Row(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Conteudo, planejar este')
          ],
        
        ),

      ),

    );

  }

}