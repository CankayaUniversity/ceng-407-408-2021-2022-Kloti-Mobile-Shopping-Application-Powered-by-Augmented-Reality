import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Lacoste extends StatelessWidget {
  Lacoste({Key? key}) : super(key: key);
  Duration duration = Duration();
  Timer? timer;

  bool isCountdown = true;
  int currentIndex = 0;
  int activeIndex = 0;

  final urlImages = [
    'https://r.resimlink.com/tIfnO.png',
    'https://r.resimlink.com/onU8OehaR.jpg',
    'https://r.resimlink.com/4Akt5Ijdp-H.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Kloti'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.lightGreen, Colors.green.withOpacity(0.5)])),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: ListView(
          children: [
            Column(
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 215,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: true,
                    pageSnapping: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                ),
                const SizedBox(
                  height: 13,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildTimeCard({required String time, required String header}) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.orangeAccent.shade200,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 29,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            header,
            style: TextStyle(color: Colors.white),
          )
        ],
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('urlImages', urlImages));
  }

  Widget buildImage(String urlImage, int index) => ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          color: Colors.grey.shade300,
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif',
            image: urlImage,
            fit: BoxFit.fill,
          ),
        ),
      );

  setState(int Function() param0) {}
}
