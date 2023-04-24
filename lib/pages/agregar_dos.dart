// ignore_for_file: non_constant_identifier_names, unused_label, unused_local_variable

// import 'dart:io';

// import 'package:crud/services/firebase_service.dart';
// import 'package:flutter/material.dart';

// class AddNameDosPage extends StatefulWidget {
//   const AddNameDosPage({super.key});

//   @override
//   State<AddNameDosPage> createState() => _AddNameDosPageState();
// }

// class _AddNameDosPageState extends State<AddNameDosPage> {
//   TextEditingController nameController = TextEditingController(text: '');
//   TextEditingController posController = TextEditingController(text: '');
//   TextEditingController nacController = TextEditingController(text: '');
//   TextEditingController fecController = TextEditingController(text: '');
//   TextEditingController edController = TextEditingController(text: '');
//   TextEditingController metController = TextEditingController(text: '');
//   TextEditingController pesController = TextEditingController(text: '');
//   TextEditingController lugController = TextEditingController(text: '');

//   TextEditingController parController = TextEditingController(text: '');
//   TextEditingController minController = TextEditingController(text: '');
//   TextEditingController golController = TextEditingController(text: '');
//   TextEditingController amaController = TextEditingController(text: '');
//   TextEditingController rojController = TextEditingController(text: '');
//   TextEditingController estController = TextEditingController(text: '');

//   String? imageUrl;

//   File? imagen_to_upload;
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 4, 0, 42),
//         title: const Text('Agregar Estadisticas del Jugador'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView(
//           children: [

//             TextField(
//               controller: parController,
//               decoration:const InputDecoration(
//                 hintText: 'Agregar Partidos',
//               ),
//             ),

//             TextField(
//               controller: minController,
//               decoration:const InputDecoration(
//                 hintText: 'Agregar Minutos',
//               ),
//             ),

//              TextField(
//               controller: golController,
//               decoration:const InputDecoration(
//                 hintText: 'Agregar Goles',
//               ),
//             ),

//             TextField(
//               controller: amaController,
//               decoration:const InputDecoration(
//                 hintText: 'Agregar Amarillas',
//               ),
//             ),

//             TextField(
//               controller: rojController,
//               decoration:const InputDecoration(
//                 hintText: 'Agregar Rojas',
//               ),
//             ),

//             TextField(
//               controller: estController,
//               decoration:const InputDecoration(
//                 hintText: 'Agregar Estatus',
//               ),
//             ),

//             ElevatedButton(onPressed: () async{

//               final uploaded = await uploadImage(imagen_to_upload!);

//               final imageUrl = await uploadImage(imagen_to_upload!);

//               backgroundColor: const Color.fromARGB(255, 4, 0, 42);
//               await addJugadores(nameController.text, posController.text, imageUrl, nacController.text, fecController.text, edController.text, metController.text, pesController.text, lugController.text, parController.text, minController.text, golController.text, amaController.text, rojController.text, estController.text).then((_) {
//                 Navigator.pop(context);
//               });
//             }, 
//             child: const Text('Guardar'))
//           ],
//         ),
//       ),
//     );
//   }
// }