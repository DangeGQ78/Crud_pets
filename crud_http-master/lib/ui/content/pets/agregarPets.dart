import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/controller/controllerPets.dart';
import 'formPet.dart';

class AgregarPets extends StatelessWidget {
  const AgregarPets({super.key});

  @override
  Widget build(BuildContext context) {
    ControlPets controlP = Get.find();
    TextEditingController textNombre = TextEditingController();
    TextEditingController textRaza = TextEditingController();
    TextEditingController textfoto = TextEditingController();

    return formPets(
        textNombre: textNombre,
        textRaza: textRaza,
        textfoto: textfoto,
        controlP: controlP);
  }
}
