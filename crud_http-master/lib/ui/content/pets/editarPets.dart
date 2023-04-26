import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/controller/controllerPets.dart';

class EditarPets extends StatelessWidget {
  const EditarPets({super.key, required this.i});
  final int i;
  @override
  Widget build(BuildContext context) {
    ControlPets controlP = Get.find();

    TextEditingController textNombre = TextEditingController();
    TextEditingController textRaza = TextEditingController();
    TextEditingController textfoto = TextEditingController();
    textNombre.text = controlP.listaPetsFinal![i].nombre;
    textRaza.text = controlP.listaPetsFinal![i].raza;
    textfoto.text = controlP.listaPetsFinal![i].foto;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Agregar pets"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textNombre,
                decoration:
                    const InputDecoration(hintText: "Nombre de la mascota"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textRaza,
                decoration: const InputDecoration(
                  hintText: "Raza",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textfoto,
                decoration: const InputDecoration(
                  hintText: "foto",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {
                        controlP
                            .actualizarPet(textNombre.text, textRaza.text,
                                textfoto.text, controlP.listaPetsFinal![i].id)
                            .then((value) {
                          Get.snackbar(
                              'Pets', controlP.listaMensajes![0].mensaje,
                              duration: const Duration(seconds: 3),
                              icon: const Icon(Icons.info),
                              shouldIconPulse: true,
                              backgroundColor: Colors.yellow);
                        });
                        Get.back();
                      },
                      child: const Text(
                        "guardar",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ))),
            )
          ]),
    );
  }
}
