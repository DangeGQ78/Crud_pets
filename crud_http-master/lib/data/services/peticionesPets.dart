import 'dart:convert';

import 'package:crud_http/domain/models/pets.dart';
import 'package:crud_http/domain/models/utiles.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PeticionesPets {
  static Future<List<Pets>> getListPets() async {
    var url = Uri.parse(
        "https://notional-dealer.000webhostapp.com/movil_api/listaPets.php");

    final response = await http.get(url);

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista2, response.body);
  }

  static List<Mensajes> convertirAlista(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    print(pasar[0]['mensaje']);
    return pasar.map<Mensajes>((json) => Mensajes.desdeJson(json)).toList();
  }

  static Future<List<Pets>> validarPet(String u, String p) async {
    var url = Uri.parse(
        "https://notional-dealer.000webhostapp.com/movil_api/validarUser.php");

    final response = await http.post(url, body: {'user': u, 'pass': p});

    return compute(convertirAlista2, response.body);
  }

  static List<Pets> convertirAlista2(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    return pasar.map<Pets>((json) => Pets.desdeJson(json)).toList();
  }

  /*static Future<List<Pets>> getPets() async {
    var url = Uri.parse(
        "https://notional-dealer.000webhostapp.com/movil_api/listaPets.php");

    final response = await http.post(url,body: );

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }*/

// Método para enviar datos de una mascota a la API PHP
  static Future<String> insertPet(Pets mascota) async {
    var url = Uri.parse(
        "https://notional-dealer.000webhostapp.com/movil_api/registrarPet.php");

    // Convertir el mapa a JSON
    String jsonMascota = jsonEncode(mascota.toMap());

    final respuesta = await http.post(
      url,
      body: jsonMascota,
    );

    if (respuesta.statusCode == 200) {
      // Si la respuesta HTTP tiene un código de estado 200 (éxito),
      // se considera que la mascota se pudo guardar exitosamente
      return "Mascota guardada exitosamente";
    } else {
      // Si la respuesta HTTP tiene un código de estado diferente de 200,
      // se considera que hubo un error al guardar la mascota
      return "Error al guardar la mascota";
    }
  }

  static Future<List<Mensajes>> insertPet2(Pets p) async {
    var url = Uri.parse(
        "https://notional-dealer.000webhostapp.com/movil_api/registrarPet.php");

    final response = await http.post(url, body: {
      'foto': p.foto,
      'nombre': p.nombre,
      'raza': p.raza,
      'estado': p.estado.toString(),
      'iduser': p.idUser.toString()
    });

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }

  static Future<List<Mensajes>> actualizarPet(Pets p) async {
    var url = Uri.parse(
        "https://notional-dealer.000webhostapp.com/movil_api/prueba.php");

    final response = await http.post(url, body: {
      'id': p.id.toString(),
      'foto': p.foto,
      'nombre': p.nombre,
      'raza': p.raza,
      'estado': p.estado.toString(),
      'iduser': p.idUser.toString()
    });

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }

  static Future<List<Mensajes>> eliminarPet(String id) async {
    var url = Uri.parse(
        "https://notional-dealer.000webhostapp.com/movil_api/eliminarPet.php?id=$id");

    final response = await http.get(url);

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }
}
