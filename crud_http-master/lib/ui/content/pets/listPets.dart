import 'package:crud_http/domain/controller/controllerPets.dart';
import 'package:crud_http/domain/controller/controllerUser.dart';
import 'package:crud_http/ui/content/pets/editarPets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/models/utiles.dart';

class ListPets extends StatelessWidget {
  const ListPets({super.key});

  @override
  Widget build(BuildContext context) {
    ControlPets controlp = Get.find();
    ControlUser controlu = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Mascotas'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed("/agregarPets");
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controlp.listaPetsFinal!.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(controlp.listaPetsFinal![index].foto),
              ),
              title: Text(controlp.listaPetsFinal![index].nombre),
              subtitle: Text(controlp.listaPetsFinal![index].raza),
              trailing: (controlp.listaPetsFinal![index].idUser ==
                      controlu.listaUserLogin![0].id)
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.to(EditarPets(i: index));
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext contex) {
                                    return ConfirmationDialog(
                                      title: 'ELIMINAR',
                                      content: 'desea eliminar la mascos?',
                                      onConfirm: () {
                                        controlp
                                            .eliminarPet(controlp
                                                .listaPetsFinal![index].id
                                                .toString())
                                            .then((value) {
                                          Get.snackbar(
                                              'Pets',
                                              controlp
                                                  .listaMensajes![0].mensaje,
                                              duration:
                                                  const Duration(seconds: 3),
                                              icon: const Icon(Icons.info),
                                              shouldIconPulse: true,
                                              backgroundColor: Colors.yellow);
                                        });
                                        Get.back();
                                      },
                                      onCancel: () {
                                        Get.back();
                                      },
                                    );
                                  });
                            },
                            icon: const Icon(Icons.delete))
                      ],
                    )
                  : const Text(''),
            );
          },
        ),
      ),
    );
  }
}

void _mostrarDialogic(BuildContext context) {}
