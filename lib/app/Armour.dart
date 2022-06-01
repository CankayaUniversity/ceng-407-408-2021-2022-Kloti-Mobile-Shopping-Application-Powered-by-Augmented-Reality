import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/lacoste_erkek.dart';
import 'package:flutter_kloti/app/lacostekadin.dart';


class Armour extends StatelessWidget {
  Armour({Key? key}) : super(key: key);
  Duration duration = Duration();
  Timer? timer;

  bool isCountdown = true;
  int currentIndex = 0;
  int activeIndex = 0;

  final urlImages = [
    'https://www.underarmourlacrosse.com/wp-content/uploads/2020/09/ua.jpg',
    'https://www.sporvol.com.tr/uploads/blog/curryblog.jpg',
    'https://www.wigglestatic.com/images/offers/commercial/2021/week10/2021-week10-brandstore-underarmour-slide1-small-min.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
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
                colors: [Colors.black54, Colors.grey.withOpacity(0.5)])),
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
            Column(
              children: [
                Wrap(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 80, right: 50, left: 35),
                      child: Material(
                        elevation: 12,
                        borderRadius: BorderRadius.circular(13),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.black12,
                        child: InkWell(
                          splashColor: Colors.white54,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LacosteKadin()),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.white30, width: 2),
                                    shape: BoxShape.rectangle),
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/kadinlacoste.jpg'),
                                  height: 140,
                                  width: 105,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Kadın',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80, right: 50),
                      child: Material(
                        elevation: 12,
                        borderRadius: BorderRadius.circular(13),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.black12,
                        child: InkWell(
                          splashColor: Colors.white54,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  LacosteErkek()),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.white12, width: 2),
                                    shape: BoxShape.rectangle),
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/erkeklacoste.jpg'),
                                  height: 140,
                                  width: 105,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Erkek',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
