import 'package:flutter_web/material.dart';

class ListItem {
  ListItem(this.value, this.url);
  final int value;
  final String url;
}

class PartyTheme extends StatelessWidget {
  // valor pra mandar pro backend identificando a img
  int img;

  List<String> imgArray = [
    'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png',
    'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png'
    // Image.network(
    //   'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png',
    //   height: 30,
    //   width: 100,
    // ),
    // Image.network(
    //   'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png',
    //   height: 30,
    //   width: 100,
    // ),
    // Image.network(
    //   'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png',
    //   height: 30,
    //   width: 100,
    // )
  ];

  List<Widget> _gerar() {
    // List<ListItem> newArray = [];
    List<Widget> widgetNew = [];

    for (var i = 0; i < imgArray.length; i++) {
      
      widgetNew.add(
        MaterialButton(
          key: Key(i.toString()),
          onPressed: (){
            img = i;
            print(img);
          },
          child: Image.network(
            imgArray[i],
            height: 30,
            width: 100,
          ),
        )
      );

    }

    return widgetNew;

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _gerar(),
    );
  }
}
