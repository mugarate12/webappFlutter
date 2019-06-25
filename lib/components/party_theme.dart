import 'package:flutter_web/material.dart';
import 'package:congrats/components/json_class_newParty.dart' as jsonParty;
import 'dart:convert';

class ListItem {
  ListItem(this.value, this.url);
  final int value;
  final String url;
}

class PartyTheme extends StatelessWidget {
  // valor pra mandar pro backend identificando a img
  int img;

  List<String> _getCategories(jsonResponse) {
    List<String> categories = [];

    for (var i = 0; i < jsonResponse.length; i++) {
      bool add = true;

      for (var j = 0; j < categories.length; j++) {
        if (jsonResponse[i].category == categories[j]) {
          add = false;
          break;
        }
      }

      if (add) categories.add(jsonResponse[i].category);
    }

    return categories;
  }

  List<Widget> _themesByCategory() {

    // simulando a requisição
    var jsonResponse = [
      '{ "id": 1, "theme": "CASAMENTO1", "category": "CASAMENTO", "url": "https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png" }',
      '{ "id": 2, "theme": "JUNINA1", "category": "JUNINA", "url": "https://vignette.wikia.nocookie.net/mob-psycho-100/images/8/8c/Mob_anime.png/revision/latest?cb=20160712054631" }',
    ];

    // transformando numa lista de objetos
    var jsonResponseDecoded = [];
    for (var i = 0; i < jsonResponse.length; i++) {
      jsonResponseDecoded
          .add(new jsonParty.PartyTheme.fromJson(json.decode(jsonResponse[i])));
    }

    // identifico as categorias
    List<String> categories = _getCategories(jsonResponseDecoded);

    List<Widget> themes = [];

    // serve pra agrupar em cada expansionTile as imagens com cada tema
    // cada expansionTile é uma categoria, e esta, com seus temas
    // esses dois for fazem tanto os expansionTiles quanto o agrupamento dos temas dentro deles
    for (var i = 0; i < categories.length; i++) {
      List<Widget> items = [];

      // construo o widget com o tema de acordo com as categorias
      for (var j = 0; j < jsonResponse.length; j++) {
        if (jsonResponseDecoded[j].category == categories[i]) {
          items.add(
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: MaterialButton(
                elevation: 0.6,
                onPressed: () {
                  img = j;
                  print(img);
                },
                child: Image.network(
                  jsonResponseDecoded[j].url,
                  height: 50,
                  width: 150,
                ),
              ),
            ),
          );
        }
      }

      // adiciono dentro do expansion tile somente a lista de Widget que fazem parte desse tema
      themes.add(
        ExpansionTile(
          title: Text(categories[i]),
          children: <Widget>[
            Wrap(
              direction: Axis.horizontal,
              children: items,
            ),
          ],
        ),
      );
    }

    return themes;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          direction: Axis.horizontal,
          children: _themesByCategory(),
        ));
  }
}
