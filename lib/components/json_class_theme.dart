import 'package:flutter_web/material.dart';

class Themes {

  int id;
  String theme;
  String category;
  String url;

  Themes({
    this.id,
    this.theme,
    this.category,
    this.url
  });

  factory Themes.fromJson(Map<String, dynamic> json) {

    return new Themes(

      id: json['id'],
      theme: json['theme'],
      category: json['category'],
      url: json['url']

    );

  }

}

class Themes2 {

  List<Themes> themesArray;

  Themes2({
    this.themesArray
  });

  

}