// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getJugadores() async{
  List Jugadores = [];
  CollectionReference collectionReferenceJugadores = db.collection('jugadores');
  QuerySnapshot queryJugadores =await collectionReferenceJugadores.get();
  for (var doc in queryJugadores.docs) { 
   final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
   final jugador = {
     'uid': doc.id,
     'name': data['name'],
     'pos': data['pos'],
     'images': data['images'],
     'nac': data['nac'],
     'fec': data['fec'],
     'ed': data['ed'],
     'met': data['met'],
     'pes': data['pes'],
     'lug': data['lug'],

     'par': data['par'],
     'min': data['min'],
     'gol': data['gol'],
     'ama': data['ama'],
     'roj': data['roj'],
     'est': data['est'],
   };

    Jugadores.add(jugador);
  }
  await Future.delayed(const Duration(seconds: 2));
  return Jugadores;
}

//Guardar
Future<void> addJugadores(String name, String pos, String imageUrl, String nac, String fec, String ed, String met, String pes, String lug, String par, String min, String gol, String ama, String roj, String est) async{
  await db.collection('jugadores').add({'name': name, 'pos': pos, 'images': imageUrl, 'nac': nac, 'fec': fec, 'ed': ed, 'met': met, 'pes': pes, 'lug': lug, 'par': par, 'min': min, 'gol': gol, 'ama': ama, 'roj': roj, 'est': est});
}

//Editar-Actualizar
Future<void> updateJugadores(String uid, String newName, String newPos,  String imageUrlN, String nacN, String fecN, String edN, String metN, String pesN, String lugN, String parN, String minN, String golN, String amaN, String rojN, String estN) async{
  await db.collection('jugadores').doc(uid).set({'name': newName, 'pos': newPos, 'images': imageUrlN, 'nac': nacN, 'fec': fecN, 'ed': edN, 'met': metN, 'pes': pesN, 'lug': lugN, 'par': parN, 'min': minN, 'gol': golN, 'ama': amaN, 'roj': rojN, 'est': estN});
}

//Eliminar/borrar
Future<void> deleteJugadores(String uid) async{
  await db.collection('jugadores').doc(uid).delete();
}

//agregar img
Future getImage() async{
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);

  return image;
}

//subir a firebase
final FirebaseStorage storage = FirebaseStorage.instance;

Future<String>uploadImage( File image) async{
final String namefile = image.path.split('/').last;
final Reference ref = storage.ref().child('images').child(namefile);
final UploadTask uploadTask = ref.putFile(image);
final TaskSnapshot snapshot = await uploadTask.whenComplete(() => true);
final String url = await snapshot.ref.getDownloadURL();
if(snapshot.state == TaskState.success){
 return url;
  } else {
    throw Exception('Error, No se subio la imagen');
  }
}