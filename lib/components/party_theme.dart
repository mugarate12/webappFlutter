import 'package:flutter_web/material.dart';

class ListItem {
  ListItem(this.value, this.url);
  final int value;
  final String url;
}

class PartyTheme extends StatelessWidget {
  // valor pra mandar pro backend identificando a img
  int img;

  List<String> _url_imgs_from_api() {
    // a intenção é fazer a requisição, e em seguida gerar esse array somente com as urls
    return [
      'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png',
      'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png',
      'https://vignette.wikia.nocookie.net/mob-psycho-100/images/8/8c/Mob_anime.png/revision/latest?cb=20160712054631',
      'http://leituraverso.com.br/wp-content/uploads/2019/01/mob-psycho-100-ritsu.jpg',
      'https://vignette.wikia.nocookie.net/kurokonobasuke/images/7/79/LG_Kuroko.png/revision/latest?cb=20170730002650',
      'https://vignette.wikia.nocookie.net/kurokonobasuke/images/7/79/LG_Kuroko.png/revision/latest?cb=20170730002650'
    ];
  }

  List<Widget> _gerar() {
    // processa a função acima e me da o array com as urls
    List<String> imgArray = _url_imgs_from_api();
    // array que tem os Widgets de fato, com as imagens dos temas
    List<Widget> themes = [];

    for (var i = 0; i < imgArray.length; i++) {
      themes.add(ExpansionTile(
        title: Text("Tema${i}"),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: MaterialButton(
              // key: Key(i.toString()),
              elevation: 0.6,
              onPressed: () {
                img = i;
                print(img);
              },
              child: Image.network(
                imgArray[i],
                height: 50,
                width: 150,
              ),
            ),
          )
        ],
      ));
    }

    return themes;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          direction: Axis.horizontal,
          children: _gerar(),
        ));
  }
}
