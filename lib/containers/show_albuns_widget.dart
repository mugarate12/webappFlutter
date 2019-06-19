import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';

import 'package:congrats/components/btn_album.dart' as btn_album;
import 'package:congrats/components/img_album_button.dart' as img_album;
import 'package:congrats/components/card_album.dart' as card;

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
        albums.add(img_album.Album(
          functionDiagramador: _functionDiagramador,
          functionPdf: _functionPdf,
          i: i,
          items: items,
        ));
      }

      return albums;
    }

    // return Padding(
    //   padding: EdgeInsets.only(top: 20),
    //   child: Container(
    //     width: MediaQuery.of(context).size.width / 1.5,
    //     child: Wrap(
    //       direction: Axis.horizontal,
    //       children: <Widget>[
    //         card.Card_Album(),
    //         // card.Card_Album()
    //       ],
    //     ),
    //   ),
    // );

    return Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height -
            (MediaQuery.of(context).size.height / 4),
        child: ListView(
          children: <Widget>[
            card.Card_Album(),
            // card.Card_Album()
          ],
        ));
  }
}
