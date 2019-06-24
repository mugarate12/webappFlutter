import 'package:flutter_web/material.dart';

class Example {
  final int id;
  final String name_of_fest;

  Example(this.id, this.name_of_fest);

  factory Example.fromJson(Map<String, dynamic> json) {
    return Example(
      json['id'],
      json['name_of_fest'],
    );
  }
}
