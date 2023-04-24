// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'dart:io';
import 'package:crud/services/firebase_service.dart';
import 'package:flutter/material.dart';

class EditNamePage extends StatefulWidget {
  const EditNamePage({super.key});

  @override
  State<EditNamePage> createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {
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
        title: const Text('Editar Jugador'),
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
            child: const Text("Seleccionar Imagen")),

            TextField(
              controller: nameController,
              decoration:const InputDecoration(
                hintText: 'Editar Nombre',
              ),
            ),

            TextField(
              controller: posController,
              decoration:const InputDecoration(
                hintText: 'Editar Posición',
              ),
            ), 

            TextField(
              controller: fecController,
              decoration:const InputDecoration(
                hintText: 'Editar Fecha de Nacimiento',
              ),
            ),

            TextField(
              controller: edController,
              decoration:const InputDecoration(
                hintText: 'Editar Edad',
              ),
            ),

             TextField(
              controller: metController,
              decoration:const InputDecoration(
                hintText: 'Editar Estatura',
              ),
            ),

            TextField(
              controller: pesController,
              decoration:const InputDecoration(
                hintText: 'Editar Peso',
              ),
            ),

            TextField(
              controller: lugController,
              decoration:const InputDecoration(
                hintText: 'Editar Lugar de Nacimiento',
              ),
            ),

            TextField(
              controller: nacController,
              decoration:const InputDecoration(
                hintText: 'Editar Posición',
              ),
            ), 
           
            ElevatedButton(
              onPressed: () async {

              final uploaded = await uploadImage(imagen_to_upload!);

              final imageUrl = await uploadImage(imagen_to_upload!);

              await updateJugadores(arguments['uid'], nameController.text, posController.text, imageUrl, nacController.text, fecController.text, edController.text, metController.text, pesController.text, lugController.text, parController.text, minController.text, golController.text, amaController.text, rojController.text, estController.text).then((_){
                Navigator.pop(context);
              });
            },
            child: const Text('Actualizar')),

             const SizedBox(height: 30),

          const Center(
                child: Text(
                  'Datos Personales',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),

            ElevatedButton(
            onPressed: () async{
              await Navigator.pushNamed(context, '/datos', arguments: {
                      'name': nameController.text,
                      'pos': posController.text,
                      'nac': nacController.text,
                      'fec': fecController.text,
                      'ed': edController.text,
                      'met': metController.text,
                      'pes': pesController.text,
                      'lug': lugController.text,
                      // 'images' : imageUrl,
                    });

                    setState(() {
                    });
            },
            child: Icon(Icons.visibility),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              primary: const Color.fromARGB(255, 4, 0, 42),
            ),
          )
          ],
        ),
      ),
    );
  }
}