// ignore_for_file: unused_local_variable, non_constant_identifier_names, unused_label

import 'dart:io';

import 'package:crud/services/firebase_service.dart';
import 'package:flutter/material.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 0, 42),
        title: const Text('Agregar Jugador'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            imagen_to_upload !=null ? Image.file(imagen_to_upload!): Container(
              margin:const EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              color: const Color.fromARGB(255, 4, 0, 42),
            ),

            ElevatedButton(onPressed: () async{
              final imagen = await getImage();
              setState((){
                imagen_to_upload = File(imagen!.path);
                });
            }, 
            child: const Icon(Icons.add_photo_alternate_outlined)),

            TextField(
              controller: nameController,
              decoration:const InputDecoration(
                hintText: 'Agregar Nombre',
              ),
            ),

            TextField(
              controller: posController,
              decoration:const InputDecoration(
                hintText: 'Agregar Posición',
              ),
            ),

             TextField(
              controller: fecController,
              decoration:const InputDecoration(
                hintText: 'Agregar Fecha de Nacimiento',
              ),
            ),

            TextField(
              controller: edController,
              decoration:const InputDecoration(
                hintText: 'Agregar Edad',
              ),
            ),

            TextField(
              controller: metController,
              decoration:const InputDecoration(
                hintText: 'Agregar Estatura',
              ),
            ),

            TextField(
              controller: pesController,
              decoration:const InputDecoration(
                hintText: 'Agregar Peso',
              ),
            ),

            TextField(
              controller: lugController,
              decoration:const InputDecoration(
                hintText: 'Agregar Lugar de Nacimiento',
              ),
            ),

            TextField(
              controller: nacController,
              decoration:const InputDecoration(
                hintText: 'Agregar Nacionalidad',
              ),
            ),

            ElevatedButton(onPressed: () async{

              final uploaded = await uploadImage(imagen_to_upload!);

              final imageUrl = await uploadImage(imagen_to_upload!);

              backgroundColor: const Color.fromARGB(255, 4, 0, 42);
              await addJugadores(nameController.text, posController.text, imageUrl, nacController.text, fecController.text, edController.text, metController.text, pesController.text, lugController.text, parController.text, minController.text, golController.text, amaController.text, rojController.text, estController.text).then((_) {
                Navigator.pop(context);
              });
            }, 
            child: const Text('Guardar'))
          ],
        ),
      ),
    );
  }
}