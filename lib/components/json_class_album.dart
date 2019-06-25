class PartyAlbum {

  final String nome_da_festa;
  final String homenageados;
  final String data_e_hora;
  final String endereco;
  final String local_da_festa;
  final String theme_img;

  PartyAlbum(
    this.nome_da_festa,
    this.homenageados,
    this.data_e_hora,
    this.endereco,
    this.local_da_festa,
    this.theme_img
  );

  factory PartyAlbum.fromJson(Map<String, dynamic> json){

    return PartyAlbum(
      json['nome_da_festa'],
      json['homenageados'],
      json['data_e_hora'],
      json['endereco'],
      json['local_da_festa'],
      json['theme_img']
    );

  }

}