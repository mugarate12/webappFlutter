import 'package:flutter_web/material.dart';
import 'package:congrats/responsive_widget.dart' as responsive_widget;
import 'package:congrats/components/img_card_album.dart' as img;
import 'package:congrats/components/items_album.dart' as items;
import 'package:congrats/components/btn_card_album.dart' as btn;

class Card_Album extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: 400,
      child: Card(
        child: Column(
          children: <Widget>[
            // imagem de fundo
            img.ImgAlbum(),
            // contem os items
            items.Items(),
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
