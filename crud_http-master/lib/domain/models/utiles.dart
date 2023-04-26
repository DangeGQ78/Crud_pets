import 'package:flutter/material.dart';

class Mensajes {
  late String mensaje;

  Mensajes({required this.mensaje});

  factory Mensajes.desdeJson(Map<String, dynamic> jsonMap) {
    return Mensajes(mensaje: jsonMap['mensaje']);
  }
}

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: onConfirm,
          child: const Text('Aceptar'),
        ),
      ],
    );
  }
}
