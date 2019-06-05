import 'package:flutter_web/material.dart';

import 'package:congrats/components/btn_album.dart' as btn_album;

class ShowAlbuns extends StatelessWidget {
  Function _functionDiagramador(int id) {
    print(id);
  }

  Function _functionPdf(int id) {
    print(id);
  }

  @override
  Widget build(BuildContext context) {
    List<List> _get_from_api() {
      // simulando o que aqui, vai ser um json
      return [
        [
          1,
          'Festa de Fulano',
          'https://vignette.wikia.nocookie.net/mob-psycho-100/images/8/8c/Mob_anime.png/revision/latest?cb=20160712054631'
        ],
        [
          2,
          'festa de cicrano',
          'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png'
        ],
        [
          3,
          'festa de cicrano',
          'http://leituraverso.com.br/wp-content/uploads/2019/01/mob-psycho-100-ritsu.jpg'
        ],
        [
          4,
          'festa de cicrano',
          'https://vignette.wikia.nocookie.net/kurokonobasuke/images/7/79/LG_Kuroko.png/revision/latest?cb=20170730002650',
        ],
        [
          5,
          'festa de cicrano',
          'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png'
        ],
      ];
    }

    List<Widget> _items() {
      List<List> items = _get_from_api();
      List<Widget> albums = [];

      for (var i = 0; i < items.length; i++) {
        albums.add(Padding(
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
                        color: Colors.purple,
                        icon: Icons.tab,
                        function_btn: _functionDiagramador,
                        id_value: items[i][0],
                      ),
                      btn_album.BtnAlbum(
                        color: Colors.purple,
                        icon: Icons.dock,
                        function_btn: _functionPdf,
                        id_value: items[i][0],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      }

      return albums;
    }

    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Wrap(
          direction: Axis.horizontal,
          children: _items(),
        ),
      ),
    );
  }
}
