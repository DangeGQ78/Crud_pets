class Pets {
  late int? id;
  late String foto;
  late String nombre;
  late String raza;
  late int idUser;
  late int estado;
  Pets(
      {this.id,
      required this.foto,
      required this.nombre,
      required this.raza,
      required this.estado,
      required this.idUser});

  factory Pets.desdeJson(Map<String, dynamic> jsonMap) {
    return Pets(
      id: int.parse(jsonMap['id']),
      foto: jsonMap['foto'],
      nombre: jsonMap['nombre'],
      raza: jsonMap['raza'],
      estado: int.parse(jsonMap['estado']),
      idUser: int.parse(jsonMap['iduser']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'foto': foto,
      'nombre': nombre,
      'raza': raza,
      'estado': estado,
      'idUser': idUser
    };
  }
}
