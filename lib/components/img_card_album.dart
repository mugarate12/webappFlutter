import 'package:flutter_web/material.dart';

class ImgAlbum extends StatelessWidget {

  ImgAlbum({
    Key key,
    this.nome_da_festa,
    this.theme_img
  })
  :super(key: key);

  final String nome_da_festa;
  final String theme_img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(top: 2, right: 2, left: 2),
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(
            // 'https://jovemnerd.com.br/wp-content/uploads/2018/12/one-punch-man-2-temporada-teaser-760x428.png',
            theme_img,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(
          left: 10,
          bottom: 5,
        ),
        child: Text(
          // 'nome da festa',
          nome_da_festa,
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
