import 'dart:html' as prefix0;

import 'package:flutter_web/material.dart';
import 'package:congrats/components/textinput.dart' as text_input;
import 'package:congrats/components/party_theme.dart' as party_theme;
import 'package:congrats/components/btn_login.dart' as btn;

class NewAlbum extends StatefulWidget {
  @override
  _NewAlbumState createState() => new _NewAlbumState();
}

class _NewAlbumState extends State<NewAlbum> {
  TextEditingController party_name = new TextEditingController();
  TextEditingController img = new TextEditingController();
  TextEditingController adress = new TextEditingController();
  TextEditingController date = new TextEditingController();
  TextEditingController name_of_place= new TextEditingController();

  void _btnFunction() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height -
          (MediaQuery.of(context).size.height / 4),
      width: MediaQuery.of(context).size.width / 2,
      child: Center(
          child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              text_input.TextInput(
                controllerInput: party_name,
                hintText: 'Festa da Camila; Casamento de João...',
                labelText: 'Nome da festa',
              ),
              text_input.TextInput(
                controllerInput: date,
                hintText: '07-08-2019 às 19h40',
                labelText: 'Data e Hora',
              ),
              text_input.TextInput(
                controllerInput: adress,
                hintText: 'Rua Fernandes Lima - São Freitas',
                labelText: 'Endereço',
              ),
              text_input.TextInput(
                controllerInput: name_of_place,
                hintText: 'Salão de Festas, ABC...',
                labelText: 'Local da Festa',
              ),
              text_input.TextInput(
                controllerInput: img,
                hintText: 'picker provisorio',
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('TEMA'),
              ),
              party_theme.PartyTheme(),
              btn.ButtonLogin(
                functionBtn: _btnFunction,
                btnName: 'OK',
              )
            ],
          ),
        ],
      )),
    );
  }
}
