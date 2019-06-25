import 'package:flutter_web/material.dart';
import 'package:congrats/components/img_card_album.dart' as img;
import 'package:congrats/components/items_album.dart' as items;
import 'package:congrats/components/btn_card_album.dart' as btn;

class Card_Album extends StatelessWidget {

  Card_Album({
    Key key,
    this.nome_da_festa,
    this.homenageados,
    this.data_e_hora,
    this.endereco,
    this.local_da_festa,
    this.theme_img
  })
  :super(key: key);

  final String nome_da_festa;
  final String homenageados;
  final String data_e_hora;
  final String endereco;
  final String local_da_festa;
  final String theme_img;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: 400,
      child: Card(
        child: Column(
          children: <Widget>[
            // imagem de fundo
            img.ImgAlbum(
              nome_da_festa: nome_da_festa,
              theme_img: theme_img
            ),
            // img.ImgAlbum(),
            // contem os items
            // items.Items(),
            items.Items(
              homenageados: homenageados,
              data_e_hora: data_e_hora,
              endereco: endereco,
              local_da_festa: local_da_festa
            ),
            // butões
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.spaceBetween,
                children: <Widget>[
                  btn.Btn(),
                  btn.Btn(),
                  btn.Btn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
