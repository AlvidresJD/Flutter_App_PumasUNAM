import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Trof extends StatefulWidget {
  const Trof ({Key? key}) :super(key : key);

  @override
  State<Trof > createState() => _SliderScreenState();

}

  class _SliderScreenState extends State<Trof >{
            List imageList =[
              {'id': 1, 'image_path': 'assets/images/1.jpg'},
              {'id': 2, 'image_path': 'assets/images/4.jpg'},
              {'id': 3, 'image_path': 'assets/images/3.jpg'},
            ];
            final CarouselController carouselController = CarouselController();
            int currentIndex = 0;
            
              get itemCount => null;
    
    @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
         appBar: AppBar(
           backgroundColor: const Color.fromARGB(255, 4, 0, 42),
          title: const Text('Trofeos'),
        ),
         body : ListView.builder(
  itemCount: 1, // la cantidad de ítems en la lista
  itemBuilder: (context, index) {
    return ListTile(
      title: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 4, 0, 42),
                        style: BorderStyle.solid
                      ),
                    ),
                  ),
                ),
                Text('Temporada 76 - 77'),
              ],
            ),
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 3,
                            height: 200, // si eliminas el tamaño, desaparecerá
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text('Pumas vs Leones N'),
                          Text('1-0'),
                          Text('Global(0-0)'),

    Expanded(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100, 
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('assets/images/t12.png'),
                Image.asset('assets/images/t1.jpg'),
              ],
            ),
          ],
        ),
    ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 139, 111, 0),
                        style: BorderStyle.solid
                      ),
                    ),
                  ),
                ),
                Text('Temporada 80 - 81'),
              ],
            ),
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 3,
                            height: 200, // si eliminas el tamaño, desaparecerá
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text('Pumas vs Cruz Azul'),
                          const Text('4-1'),
                          const Text('Global(4-2)'),

                          Expanded(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100, 
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('assets/images/t12.png'),
                Image.asset('assets/images/t2.jpg'),
              ],
            ),
          ],
        ),
    ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 4, 0, 42),
                        style: BorderStyle.solid
                      ),
                    ),
                  ),
                ),
                Text('Temporada 90 - 91'),
              ],
            ),
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 3,
                            height: 200, // si eliminas el tamaño, desaparecerá
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text('Pumas vs América'),
                          const Text('1-0'),
                          const Text('Global(3-3)'),

                           Expanded(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100, 
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('assets/images/t12.png'),
                Image.asset('assets/images/t3.jpg'),
              ],
            ),
          ],
        ),
    ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 139, 111, 0),
                        style: BorderStyle.solid
                      ),
                    ),
                  ),
                ),
                Text('Clausura 2004'),
              ],
            ),
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 3,
                            height: 200, // si eliminas el tamaño, desaparecerá
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text('Pumas vs Chivas'),
                          const Text('0-0'),
                          const Text('Global(1-1)'),

                             Expanded(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100, 
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('assets/images/t12.png'),
                Image.asset('assets/images/t4.jpg'),
              ],
            ),
          ],
        ),
    ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 4, 0, 42),
                        style: BorderStyle.solid
                      ),
                    ),
                  ),
                ),
                Text('Apertura 2004'),
              ],
            ),
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 3,
                            height: 200, // si eliminas el tamaño, desaparecerá
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text('Monterrey vs Pumas'),
                          const Text('0-1'),
                          const Text('Global(1-3)'),

                             Expanded(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100, 
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('assets/images/t12.png'),
                Image.asset('assets/images/t5.jpg'),
              ],
            ),
          ],
        ),
    ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 139, 111, 0),
                        style: BorderStyle.solid
                      ),
                    ),
                  ),
                ),
                Text('Clausura 2009'),
              ],
            ),
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 3,
                            height: 200, // si eliminas el tamaño, desaparecerá
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text('Pumas vs Pachuca'),
                          const Text('2-2'),
                          const Text('Global(2-3)'),

                             Expanded(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100, 
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('assets/images/t12.png'),
                Image.asset('assets/images/t6.jpg'),
              ],
            ),
          ],
        ),
    ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 5,
                        color: Color.fromARGB(255, 4, 0, 42),
                        style: BorderStyle.solid
                      ),
                    ),
                  ),
                ),
                Text('Clausura 2011'),
              ],
            ),
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 3,
                            height: 200, // si eliminas el tamaño, desaparecerá
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text('Pumas vs Monarcas'),
                          const Text('2-1'),
                          const Text('Global(2-3)'),

                             Expanded(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100, 
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('assets/images/t12.png'),
                Image.asset('assets/images/t7.jpg '),
              ],
            ),
          ],
        ),
    ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  },
),
        ),
      );
  }
}