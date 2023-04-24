import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  const Play ({Key? key}) :super(key : key);

  @override
  State<Play > createState() => _SliderScreenState();

}

  class _SliderScreenState extends State<Play >{
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
          title: const Text('Uniformes'),
        ),
         body: ListView(
  children: [
Row(
  children: [
    Expanded(
      child: Card(
        clipBehavior: Clip.antiAlias,
  child: Column(
    children: [
      ListTile(
        leading: Icon(Icons.arrow_drop_down_circle),
        title: const Text('Uniforme Pumas'),
        subtitle: Text(
          'Clausura 2023',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ),
     
      CarouselSlider(
        options: CarouselOptions(
          height: 150, // Se redujo la altura de la imagen a 150
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
          Image.asset('assets/images/pele.jpg'),
          Image.asset('assets/images/2023.jpg'),
          Image.asset('assets/images/20232.jfif'),
        ],
      ),
    ],
  ),
      ),
    ),

    Expanded(
      child: Card(
        clipBehavior: Clip.antiAlias,
  child: Column(
    children: [
      ListTile(
        leading: Icon(Icons.arrow_drop_down_circle),
        title: const Text('Uniforme Pumas'),
        subtitle: Text(
          'Clausura 2011',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ),
      CarouselSlider(
        options: CarouselOptions(
          height: 150, // Se redujo la altura de la imagen a 150
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
          Image.asset('assets/images/pumas2011.jpg'),
          Image.asset('assets/images/pumas20112.jpg'),
          Image.asset('assets/images/pumas20113.jpg'),
        ],
      ),
    ],
  ),
      ),
    ),
  ],
),

Row(
  children: [
    Expanded(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: const Text('Uniforme Pumas'),
              subtitle: Text(
                'Apertura 2015',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150, 
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
                Image.asset('assets/images/2015.jpg'),
                Image.asset('assets/images/20152.jpg'),
                Image.asset('assets/images/20154.jpg'),
              ],
            ),
          ],
        ),
      ),
    ),

    Expanded(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: const Text('Uniforme Pumas'),
              subtitle: Text(
                'Apertura 2004',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150, 
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
                Image.asset('assets/images/2004.jpg'),
                Image.asset('assets/images/20042.jpg'),
              ],
            ),
          ],
        ),
      ),
    ),
  ],
),

Row(
  children: [
    Expanded(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: const Text('Uniforme Pumas'),
              subtitle: Text(
                'Guardianes 2020',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150, 
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
                Image.asset('assets/images/2020.jpg'),
                Image.asset('assets/images/20202.jfif'),
              ],
            ),
          ],
        ),
      ),
    ),

    Expanded(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: const Text('Uniforme Pumas'),
              subtitle: Text(
                'apertura 2016',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150, 
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
                Image.asset('assets/images/2016.jpg'),
                Image.asset('assets/images/20162.jpg'),
              ],
            ),
          ],
        ),
      ),
    ),
  ],
),

Row(
  children: [
    Expanded(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: const Text('Uniforme Pumas'),
              subtitle: Text(
                'Guardianes 2020',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150, 
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
                Image.asset('assets/images/2008.jpg'),
                Image.asset('assets/images/20082.jpg'),
              ],
            ),
          ],
        ),
      ),
    ),

    Expanded(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: const Text('Uniforme Pumas'),
              subtitle: Text(
                'apertura 2016',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150, 
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
                Image.asset('assets/images/2018.jpg'),
                Image.asset('assets/images/20182.jpg'),
              ],
            ),
          ],
        ),
      ),
    ),
  ],
),
  ],
    ),
), 
);
  }
}