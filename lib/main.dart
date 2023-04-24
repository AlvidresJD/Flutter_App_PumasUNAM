import 'package:crud/pages/add_name_page.dart';
import 'package:crud/pages/datos_est.dart';
import 'package:crud/pages/datos_per.dart';
import 'package:crud/pages/drawer.dart';
import 'package:crud/pages/edit_name_page.dart';
import 'package:crud/pages/editar_dos.dart';
import 'package:crud/pages/esta_disticas.dart';
import 'package:crud/pages/home_page.dart';
import 'package:crud/pages/login.dart';
import 'package:crud/pages/perfil.dart';
import 'package:crud/pages/playeras.dart';
import 'package:crud/pages/trofeos.dart';
import 'package:flutter/material.dart';

//Importaciones de fire base
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Pumas Mx',
      initialRoute: '/',
      routes: {
        '/home':(context) => const Home(),
        '/EstaD' :((context) => const EstaD()),

        '/add':(context) => const AddNamePage(),
        // '/addDos':(context) => const AddNameDosPage(),

        '/edit' :((context) => const EditNamePage()),
        '/editDos' :((context) => const EditNameDosPage()),

        '/datos' :((context) =>  const DatosP()),
        '/datosDos' :((context) =>  const EstaP()),

        '/' :((context) => LoginPage()),

        '/Listas' :((context) => const Listas()),

        '/playeras' :((context) =>  Play()),

        '/trof' :((context) =>  Trof()),

        '/perfil' :((context) =>  Perfil()),
      },
    );
  }
}

