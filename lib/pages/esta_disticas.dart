import 'package:crud/services/firebase_service.dart';
import 'package:flutter/material.dart';

class EstaD extends StatefulWidget {
  const EstaD({
    Key? key,
  }) : super(key: key);

  @override
  State<EstaD> createState() => _EstaDState();
}

class _EstaDState extends State<EstaD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 0, 42),
        title: const Text('Estadisticas Pumas UNAM'),
      ),
      
      body: FutureBuilder(
        future: getJugadores(),
        builder: ((context, snapshot) {
        
          if (snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: ((context, index) => Card(
              // color: Color.fromARGB(255, 255, 249, 227),
              child: Dismissible(
                onDismissed: (direction) async{
                  await deleteJugadores(snapshot.data?[index]['uid']);
                  snapshot.data?.removeAt(index);
                },
                
                confirmDismiss: (direction)async{
                  bool result = false;
                  result = await showDialog(
                    context: context, 
                    builder:(context){
                    return AlertDialog(
                      // ignore: unnecessary_const
                      title: Text('¿Eliminar las estadisticas del Jugador ${snapshot.data?[index]['name']}?'),
                      actions: [
                        TextButton(onPressed: () {
                            return Navigator.pop(
                            context,
                            false,
                          );
                        }, 
                        child: const Text('Cancelar', 
                        style: TextStyle(color: Color.fromARGB(255, 213, 0, 0)) ,)),

                        TextButton(onPressed: () {
                            return Navigator.pop(
                            context,
                            true,
                          );
                        }, 
                        child: const Text('Aceptar'))
                      ],
                    );
                  });
                  return result;
                },
                background: Container(
                  color: Colors.redAccent[700],
                  // ignore: sort_child_properties_last
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.delete),
                    const SizedBox(width: 5), // Espacio entre el icono y el texto
                    const Text(
                      'Eliminar X',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 20), // Espacio extra al final
                  ],
                ),
                  padding: const EdgeInsets.only(top: 10.0, right: 15.0),  
                ),
                direction: DismissDirection.endToStart,
                key: Key(snapshot.data?[index]['uid']),
        
                child: ListTile(
                    leading: Container(
                    width: 50.0, // establece un ancho para el contenedor
                    height: 60.0, // establece una altura para el contenedor
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle, // establece la forma del contenedor como un rectángulo
                      borderRadius: BorderRadius.circular(5.0), // establece los bordes redondeados del contenedor (opcional)
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(snapshot.data?[index]['images']),
                      ),
                    ),
                  ),
                  title: Text(snapshot.data?[index]['name']),
                  subtitle: Text(snapshot.data?[index]['pos']),

                  onTap: (() async{
                   await Navigator.pushNamed(context, '/editDos', arguments: {
                      'uid': snapshot.data?[index]['uid'],
                      'name': snapshot.data?[index]['name'],
                      'pos': snapshot.data?[index]['pos'],
                      'nac': snapshot.data?[index]['nac'],
                      'fec': snapshot.data?[index]['fec'],
                      'ed': snapshot.data?[index]['ed'],
                      'met': snapshot.data?[index]['met'],
                      'pes': snapshot.data?[index]['pes'],
                      'lug': snapshot.data?[index]['lug'],

                      'par': snapshot.data?[index]['par'],
                      'min': snapshot.data?[index]['min'],
                      'gol': snapshot.data?[index]['gol'],
                      'ama': snapshot.data?[index]['ama'],
                      'roj': snapshot.data?[index]['roj'],
                      'est': snapshot.data?[index]['est'],
                    });

                    setState(() {
                    });
                  })),
              ),
            )));

          } else{
            return const Center(
              child: Text('Cargando...'),
            );
          }
        })),
    );
  }
}