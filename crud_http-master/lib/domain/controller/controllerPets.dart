import 'package:crud_http/data/services/peticionesPets.dart';
import 'package:crud_http/domain/models/pets.dart';
import 'package:get/get.dart';

import '../models/utiles.dart';
import 'controllerUser.dart';

class ControlPets extends GetxController {
  final Rxn<List<Pets>> listaPets = Rxn<List<Pets>>([]);
  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);

  Future<void> getPetsGral() async {
    listaPets.value = await PeticionesPets.getListPets();
  }

  Future<Mensajes> postPet(Pets p) async {
    return Mensajes(mensaje: await PeticionesPets.insertPet(p));
  }

  List<Mensajes>? get listaMensajes => _listarMensajes.value;
  List<Pets>? get listaPetsFinal => listaPets.value;

  Future<void> guardarPets(String nombre, String raza, String foto) async {
    ControlUser controlu = Get.find();
    Pets p = Pets(
        foto: foto,
        nombre: nombre,
        raza: raza,
        estado: 1,
        idUser: controlu.obtenerId());
    _listarMensajes.value = await PeticionesPets.insertPet2(p);
    getPetsGral();
  }

  Future<void> eliminarPet(String id) async {
    _listarMensajes.value = await PeticionesPets.eliminarPet(id);
    getPetsGral();
  }

  Future<void> actualizarPet(
      String nombre, String raza, String foto, int? id) async {
    ControlUser controlu = Get.find();
    Pets p = Pets(
        id: id,
        foto: foto,
        nombre: nombre,
        raza: raza,
        estado: 1,
        idUser: controlu.obtenerId());
    _listarMensajes.value = await PeticionesPets.actualizarPet(p);
    getPetsGral();
  }
}
