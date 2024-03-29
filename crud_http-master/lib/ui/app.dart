import 'package:crud_http/ui/auth/login.dart';
import 'package:crud_http/ui/auth/register.dart';
import 'package:crud_http/ui/content/pets/agregarPets.dart';
import 'package:crud_http/ui/content/pets/listPets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crud Usando HTTP',
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: '/login',
      routes: {
        "/login": (context) => const Login(),
        "/register": (context) => const Register(),
        "/listaPets": (context) => const ListPets(),
        "/agregarPets": (context) => const AgregarPets(),
      },
    );
  }
}
