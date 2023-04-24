// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:io';

import 'package:flutter/material.dart';

class EstaP extends StatefulWidget {
  const EstaP({super.key});

  @override
  State<EstaP> createState() => _EstaPState();
}

class _EstaPState extends State<EstaP> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController posController = TextEditingController(text: '');
  TextEditingController nacController = TextEditingController(text: '');
  TextEditingController fecController = TextEditingController(text: '');
  TextEditingController edController = TextEditingController(text: '');
  TextEditingController metController = TextEditingController(text: '');
  TextEditingController pesController = TextEditingController(text: '');
  TextEditingController lugController = TextEditingController(text: '');

  TextEditingController parController = TextEditingController(text: '');
  TextEditingController minController = TextEditingController(text: '');
  TextEditingController golController = TextEditingController(text: '');
  TextEditingController amaController = TextEditingController(text: '');
  TextEditingController rojController = TextEditingController(text: '');
  TextEditingController estController = TextEditingController(text: '');
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
    
    parController.text = arguments['par'];
    minController.text = arguments['min'];
    golController.text = arguments['gol'];
    amaController.text = arguments['ama'];
    rojController.text = arguments['roj'];
    estController.text = arguments['est'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 0, 42),
        title: const Text('Estadisticas'),
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
        const Text('Estadisticas', 
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
    Icon(Icons.stadium, color: Colors.white),
    SizedBox(width: 10), 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text('${parController.text}', style: const TextStyle(fontSize: 20, color: Colors.white)),
        SizedBox(height: 1),
        Text('Partidos', style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 139, 111, 0))),
        SizedBox(height: 10),
      ],
    ),
  ],
),

 Row(
  children: [
    Icon(Icons.timer, color: Colors.white),
    SizedBox(width: 10), // Puedes ajustar el ancho del espacio entre el icono y el texto
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
       Text('${minController.text}', 
      style: const TextStyle(fontSize: 20, color: Colors.white),
    ),
    const SizedBox(height: 1),
    const Text('Minutos', 
      style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 139, 111, 0))),
    const SizedBox(height: 10),
      ],
    ),
  ],
),

Row(
  children: [
    Icon(Icons.sports_soccer, color: Colors.white),
    SizedBox(width: 10), // Puedes ajustar el ancho del espacio entre el icono y el texto
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
       Text('${golController.text}', 
      style: const TextStyle(fontSize: 20, color: Colors.white),
    ),
    const SizedBox(height: 1),
    const Text('Goles', 
      style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 139, 111, 0))),
    const SizedBox(height: 10),
      ],
    ),
  ],
),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Icon(Icons.style, color: Color.fromARGB(255, 255, 217, 0)),
         SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('${amaController.text}', 
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 1),
            const Text('Amarillas', 
              style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 139, 111, 0))),
            const SizedBox(height: 10),
          ],
        ),

        SizedBox(width: 30),
      Expanded(
  child: Row(
    children: [
      Icon(Icons.style, color: Color.fromARGB(255, 238, 0, 0)),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('${rojController.text}', style: const TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(height: 1),
            Text('Rojas', style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 139, 111, 0))),
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
    Icon(Icons.favorite, color: Colors.white),
    SizedBox(width: 10), // Puedes ajustar el ancho del espacio entre el icono y el texto
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
       Text('${estController.text}',
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      const SizedBox(height: 1),
      const Text('Estatus', 
      style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 139, 111, 0))),
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