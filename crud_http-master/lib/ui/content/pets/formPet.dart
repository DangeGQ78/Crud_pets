import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/controller/controllerPets.dart';

class formPets extends StatelessWidget {
  const formPets({
    super.key,
    required this.textNombre,
    required this.textRaza,
    required this.textfoto,
    required this.controlP,
  });

  final TextEditingController textNombre;
  final TextEditingController textRaza;
  final TextEditingController textfoto;
  final ControlPets controlP;

  @override
  Widget build(BuildContext context) {
    ControlPets controlP = Get.find();
    TextEditingController textNombre = TextEditingController();
    TextEditingController textRaza = TextEditingController();
    TextEditingController textfoto = TextEditingController();

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
                            .guardarPets(
                                textNombre.text, textRaza.text, textfoto.text)
                            .then((value) {
                          Get.snackbar(
                              'Clientes', controlP.listaMensajes![0].mensaje,
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
