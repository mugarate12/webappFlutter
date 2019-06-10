import 'package:flutter_web/material.dart';
import 'package:congrats/components/btn_album.dart' as btn_album;

class Album extends StatelessWidget{

  Album({
    Key key,
    this.items,
    this.i,
    this.functionDiagramador,
    this.functionPdf
  }): super(key: key);

  final List<List> items;
  final int i;
  final Function functionDiagramador;
  final Function functionPdf;

  @override
  Widget build(BuildContext context){

    return Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      items[i][2],
                    ),
                    fit: BoxFit.cover)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // nome da festa, e afins
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 2),
                  child: Column(
                    children: <Widget>[Text(items[i][1])],
                  ),
                ),
                // actions
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Row(
                    children: <Widget>[
                      // botão diagramador
                      btn_album.BtnAlbum(
                        icon: Icons.tab,
                        function_btn: functionDiagramador,
                        id_value: items[i][0],
                      ),
                      btn_album.BtnAlbum(
                        icon: Icons.dock,
                        function_btn: functionPdf,
                        id_value: items[i][0],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );

  }

}