class PartyTheme {
  final int id;
  final String theme;
  final String category;
  final String url;

  PartyTheme(this.id, this.theme, this.category, this.url);

  factory PartyTheme.fromJson(Map<String, dynamic> json){

    return PartyTheme(
      json['id'],
      json['theme'],
      json['category'],
      json['url']
    );

  }
}
