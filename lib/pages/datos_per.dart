// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, non_constant_identifier_names, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';

class DatosP extends StatefulWidget {
  const DatosP({super.key});

  @override
  State<DatosP> createState() => _DatosPState();
}

class _DatosPState extends State<DatosP> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController posController = TextEditingController(text: '');
  TextEditingController nacController = TextEditingController(text: '');
  TextEditingController fecController = TextEditingController(text: '');
  TextEditingController edController = TextEditingController(text: '');
  TextEditingController metController = TextEditingController(text: '');
  TextEditingController pesController = TextEditingController(text: '');
  TextEditingController lugController = TextEditingController(text: '');
  String? imageUrl;

  File? imagen_to_upload;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    nameController.text = arguments['name'];
    posController.text = arguments['pos'];
    nacController.text = arguments['nac'];
    fecController.text = arguments['fec'];
    edController.text = arguments['ed'];
    metController.text = arguments['met'];
    pesController.text = arguments['pes'];
    lugController.text = arguments['lug'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 0, 42),
        title: const Text('Datos Personales'),
      ),
       body: Container(
         
  color: Colors.white,
  child: Center(
    child: Container(
  height: 400,
  width: 600,
  margin: const EdgeInsets.all(16),
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 4, 0, 42),
    borderRadius: BorderRadius.circular(16),
  ),
 child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Datos Personales', 
          style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 139, 111, 0)),
        ),
        const SizedBox(width: 10),
         SizedBox(
          height: 30,
          width: 40,
          child: Container(
            child: Image.network('https://logodownload.org/wp-content/uploads/2020/06/pumas-unam-logo-1-1.png'),
          ),
        ),
      ],
    ),
    const SizedBox(height: 25),

   Row(
  children: [
    Icon(Icons.account_circle, color: Colors.white),
    SizedBox(width: 10), // Puedes ajustar el ancho del espacio entre el icono y el texto
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text('${nameController.text}', style: const TextStyle(fontSize: 15, color: Colors.white)),
        SizedBox(height: 1),
        Text('Nombre', style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 139, 111, 0))),
        SizedBox(height: 10),
      ],
    ),
  ],
),

 Row(
  children: [
    Icon(Icons.sports_handball, color: Colors.white),
    SizedBox(width: 10), // Puedes ajustar el ancho del espacio entre el icono y el texto
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
       Text('${posController.text}', 
      style: const TextStyle(fontSize: 15, color: Colors.white),
    ),
    const SizedBox(height: 1),
    const Text('Posición', 
      style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 139, 111, 0))),
    const SizedBox(height: 10),
      ],
    ),
  ],
),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Icon(Icons.cake, color: Colors.white),
         SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('${fecController.text}', 
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 1),
            const Text('Fecha de Nacimiento', 
              style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 139, 111, 0))),
            const SizedBox(height: 10),
          ],
        ),

        SizedBox(width: 30),
        Expanded(
  child: Row(
    children: [
      Icon(Icons.calendar_month, color: Colors.white),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('${edController.text}', style: const TextStyle(fontSize: 15, color: Colors.white)),
            SizedBox(height: 1),
            Text('Edad', style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 139, 111, 0))),
            SizedBox(height: 10),
          ],
        ),
      ),
    ],
  ),
),
 ],
),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Icon(Icons.straighten, color: Colors.white),
         SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('${metController.text}', 
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 1),
            const Text('Estatura', 
              style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 139, 111, 0))),
            const SizedBox(height: 10),
          ],
        ),

        SizedBox(width: 100),
      Expanded(
  child: Row(
    children: [
      Icon(Icons.fitness_center, color: Colors.white),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('${pesController.text}', style: const TextStyle(fontSize: 15, color: Colors.white)),
            SizedBox(height: 1),
            Text('Peso', style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 139, 111, 0))),
            SizedBox(height: 10),
          ],
        ),
      ),
    ],
  ),
),
 ],
),

    Row(
  children: [
    Icon(Icons.location_on, color: Colors.white),
    SizedBox(width: 10), // Puedes ajustar el ancho del espacio entre el icono y el texto
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
       Text('${lugController.text}',
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      const SizedBox(height: 1),
      const Text('Lugar de Nacimiento', 
      style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 139, 111, 0))),
      const SizedBox(height: 10),
      ],
    ),
  ],
),

Row(
  children: [
    Icon(Icons.public, color: Colors.white),
    SizedBox(width: 10), // Puedes ajustar el ancho del espacio entre el icono y el texto
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
       Text('${nacController.text}',
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      const SizedBox(height: 1),
      const Text('Nacionalidad', 
      style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 139, 111, 0))),
      const SizedBox(height: 10), 
      ],
    ),
  ],
), 
    ],
  ),
),
  )
),
    );
  }
}