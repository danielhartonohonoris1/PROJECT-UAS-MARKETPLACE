import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Random random = Random();

  

  // //Array dari gambar diambil dari google
  // List<String> imageUrls = [
  //   'https://loops.id/wp-content/uploads/2021/05/10.jpg',
  //   'https://compas.co.id/wp-content/uploads/2022/08/4-Perbedaan-e-Commerce-dan-Marketplace-1024x532.jpg',
  //   'https://gencil.news/wp-content/uploads/2021/11/Ecommerce-vs-Marketplace-5.jpg',
  // ];

  List<String> assetImages = [
    'image/iklan-1.jpg',
    'image/iklan-2.jpg',
    'image/iklan-3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              //CorouselSlider
              Container(
                margin: EdgeInsets.only(top: 45),
                child: CarouselSlider(
                  items: assetImages.map((assetPath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Image.asset(
                            assetPath,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    initialPage: 0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
