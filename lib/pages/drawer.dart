// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:crud/pages/esta_disticas.dart';
import 'package:crud/pages/perfil.dart';
import 'package:crud/pages/playeras.dart';
import 'package:crud/pages/trofeos.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:crud/pages/home_page.dart';


import 'home_page.dart';

class Listas extends StatefulWidget {
  const Listas({Key? key}) :super(key : key);

  @override
  State<Listas> createState() => _SliderScreenState();

}

  class _SliderScreenState extends State<Listas>{
            List imageList =[
              {'id': 1, 'image_path': 'assets/images/1.jpg'},
              {'id': 2, 'image_path': 'assets/images/4.jpg'},
              {'id': 3, 'image_path': 'assets/images/3.jpg'},
            ];
            final CarouselController carouselController = CarouselController();
            int currentIndex = 0;
    
    @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
         appBar: AppBar(
           backgroundColor: const Color.fromARGB(255, 4, 0, 42),
          title: const Text('Pumas Mx'),
        ),

        body: ListView(
          children: [
            Stack(
              children:[
                InkWell(
                  onTap: (){
                    print(currentIndex);
                  },
                  child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }
                ),
                  )
                )
              ]
            ),
          const SizedBox(height: 30),
         Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'PUMAS UNAM',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(width: 10), // espacio entre la imagen y el título
                SizedBox(
                  height: 30,
                  width: 40,
                  child: Container(
                    child: Image.network('https://logodownload.org/wp-content/uploads/2020/06/pumas-unam-logo-1-1.png'),
                  ),
                ),
              ],
            ),
          ),

                  const Padding(
            padding: EdgeInsets.all(16.0), // establece el padding en todos los lados
            child: Text(
              'Los Pumas de la UNAM es el equipo representativo de la Universidad Nacional Autónoma de México en la Liga MX de fútbol en México. Es uno de los equipos más populares y exitosos del fútbol mexicano, habiendo ganado siete campeonatos de liga, además de numerosos títulos de copa y otros torneos a lo largo de su historia.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                height: 1.5, // establece el espacio entre líneas
              ),
              textAlign: TextAlign.justify,
            ),
          ),

            const Padding(
            padding: EdgeInsets.all(16.0), // establece el padding en todos los lados
            child: Text(
              'El equipo fue fundado en 1954 y ha tenido a muchos jugadores destacados a lo largo de los años, incluyendo a Hugo Sánchez, uno de los mejores jugadores en la historia del fútbol mexicano. Los Pumas juegan sus partidos como locales en el Estadio Olímpico Universitario, que también es el hogar de otros equipos deportivos de la UNAM.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                height: 1.5, // establece el espacio entre líneas
              ),
              textAlign: TextAlign.justify,
            ),
          ),

              Center(
                child: Text(
                  'Contenido',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            
           Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.groups),
                    title: Text('Plantilla'),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.auto_graph),
                    title: Text('Estadisticas'),
                  ),
                ),
              ],
            ),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: Icon(Icons.workspace_premium),
                  title: Text('Trofeos'),
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: Icon(Icons.star_rate),
                  title: Text('Uniformes'),
                ),
              ),
            ],
          )
        ]  
      ),
  
        drawer:Drawer(
          child: ListView(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(0),
                child: (Image.network('https://img.asmedia.epimg.net/resizer/iQQgOI0nXTx-6mKU-AwHXiv4CAw=/1952x0/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/NEB6RDHKUFI4VIRS5CXWO2V7HA.jpg')
                ),
              ),
             
             Card(
                color: Color.fromARGB(255, 4, 0, 42),
                child: ListTile(
                  leading: const Icon(Icons.groups, color: Colors.white),
                  title: Text(
                    'Plantilla',
                    style: TextStyle(
                      color: Colors.white, // Aquí especificamos el color blanco para el texto
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(builder: (context) => const Home());
                    Navigator.push(context, route);
                  },
                ),
              ),

            Card(
              color: Color.fromARGB(255, 139, 111, 0), 
              child: ListTile(
                leading: const Icon(Icons.auto_graph, color: Color.fromARGB(255, 0, 0, 0)),
                title: const Text('Estadísticas', style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), // Aquí especificamos el color blanco para el texto
                    ),),
                onTap: () {
                  final route = MaterialPageRoute(builder: (context) => const EstaD());
                  Navigator.push(context, route);
                },
              ),// Aquí puedes agregar el color de fondo que desees para el ListTile
            ),

             Card(
                color: Color.fromARGB(255, 4, 0, 42),
                child: ListTile(
                  leading: const Icon(Icons.workspace_premium, color: Colors.white),
                  title: Text(
                    'Trofeos',
                    style: TextStyle(
                      color: Colors.white, // Aquí especificamos el color blanco para el texto
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(builder: (context) => const Trof());
                    Navigator.push(context, route);
                  },
                ),
              ),

            Card(
              color: Color.fromARGB(255, 139, 111, 0), 
              child: ListTile(
                leading: const Icon(Icons.star_rate, color: Color.fromARGB(255, 0, 0, 0)),
                title: const Text('Uniformes', style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), // Aquí especificamos el color blanco para el texto
                    ),),
                onTap: () {
                  final route = MaterialPageRoute(builder: (context) =>  Play());
                  Navigator.push(context, route);
                },
              ),// Aquí puedes agregar el color de fondo que desees para el ListTile
            ),

             Card(
                color: Color.fromARGB(255, 4, 0, 42),
                child: ListTile(
                  leading: const Icon(Icons.remember_me, color: Colors.white),
                  title: Text(
                    'Acerca de',
                    style: TextStyle(
                      color: Colors.white, // Aquí especificamos el color blanco para el texto
                    ),
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(builder: (context) => Perfil());
                    Navigator.push(context, route);
                  },
                ),
              ),

              const SizedBox(height: 100),
              const Center(
                child: Text(
                  'By',
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontSize: 10,
                  ),
                ),
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jesús Alvidres Dionisio',
                      style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontSize: 10,
                      ),
                    ), // Separación entre el Text y el Icon
                    Icon(Icons.code, color: Colors.grey), // Aquí puedes colocar el Icon que desees
                  ],
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}