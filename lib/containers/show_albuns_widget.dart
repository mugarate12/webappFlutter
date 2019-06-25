import 'dart:convert';

import 'package:flutter_web/material.dart';

import 'package:congrats/components/card_album.dart' as card;

import 'package:congrats/components/json_class_theme.dart' as json_ex;
import 'package:congrats/components/json_class_album.dart' as json_album;

class ShowAlbuns extends StatelessWidget {
  Function _functionDiagramador(int id) {
    print(id);
  }

  Function _functionPdf(int id) {
    print(id);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _albuns() {
      var jsonResponse = [
        '{ "nome_da_festa": "Juninho", "homenageados": "Junior", "data_e_hora": "07-10-2019", "endereco": "Rua Pedro Oliveira", "local_da_festa": "Characa Junior", "theme_img": "https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png" }',
        '{ "nome_da_festa": "Ronaldinho", "homenageados": "Ronaldo", "data_e_hora": "07-08-2019", "endereco": "Avenida kkk", "local_da_festa": "Piscina", "theme_img": "https://vignette.wikia.nocookie.net/mob-psycho-100/images/8/8c/Mob_anime.png/revision/latest?cb=20160712054631" }'
      ];

      var jsonResponseDecoded = [];
      for (var i = 0; i < jsonResponse.length; i++) {
        jsonResponseDecoded.add(
            new json_album.PartyAlbum.fromJson(json.decode(jsonResponse[i])));
      }

      List<Widget> albums = [];
      // adicionando exemplo, desconsiderar depois
      albums.add(card.Card_Album(
        nome_da_festa: 'nome da festa',
        homenageados: "homenageados",
        data_e_hora: 'data e hora',
        endereco: 'endereço',
        local_da_festa: "local da festa",
        theme_img:
            'https://vignette.wikia.nocookie.net/mob-psycho-100/images/8/8c/Mob_anime.png/revision/latest?cb=20160712054631',
      ));

      for (var m = 0; m < jsonResponseDecoded.length; m++) {
        albums.add(card.Card_Album(
                nome_da_festa: jsonResponseDecoded[m].nome_da_festa,
                homenageados: jsonResponseDecoded[m].homenageados,
                data_e_hora: jsonResponseDecoded[m].data_e_hora,
                endereco: jsonResponseDecoded[m].endereco,
                local_da_festa: jsonResponseDecoded[m].local_da_festa,
                theme_img: jsonResponseDecoded[m].theme_img)
            // card.Card_Album()
            );
      }

      return albums;
    }

    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height -
          (MediaQuery.of(context).size.height / 4),
      child: ListView(children: _albuns()),
    );

    // return Wrap(

    //   direction: Axis.horizontal,
    //   children: <Widget>[
    //     card.Card_Album()
    //   ],

    // );

    // return Container(
    //   width: MediaQuery.of(context).size.width / 4,
    //   height: MediaQuery.of(context).size.height -
    //       (MediaQuery.of(context).size.height / 4),
    //   child: GridView.count(
    //     crossAxisCount: 2,
    //     // crossAxisSpacing: 2,
    //     scrollDirection: Axis.vertical,
    //     children: <Widget>[
    //       card.Card_Album()
    //     ],
    //   ),
    // );
  }
}
