import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kloti_app/lacoste/lacoste_aksesuar.dart';
import 'package:kloti_app/lacoste/lacoste_kadin_alt.dart';
import 'package:kloti_app/lacoste/lacoste_kadin_ayakkabi.dart';
import 'package:kloti_app/lacoste/lacoste_kadin_ust.dart';

import 'package:kloti_app/lacoste_erkek.dart';
import 'package:kloti_app/lacostekadin.dart';

class LacosteKadin extends StatelessWidget {
  LacosteKadin({Key? key}) : super(key: key);
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
            Column(
              children: [
                Wrap(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, right: 30, left: 25),
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
                                  builder: (context) => lacosteKadinAyakkabi()),
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
                                child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/loading2.gif',
                                  placeholderFit: BoxFit.cover,
                                  fadeOutDuration: Duration(seconds: 1),
                                  image:
                                      'https://laco.akinoncdn.com/products/2022/02/17/170513/092184d7-7553-4e7e-9b7e-5ea1d442c360_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 140,
                                width: 130,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Ayakkabı',
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
                      padding:
                          const EdgeInsets.only(top: 5, right: 30, left: 10),
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
                                  builder: (context) => lacosteKadinUst()),
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
                                child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/loading2.gif',
                                  placeholderFit: BoxFit.cover,
                                  fadeOutDuration: Duration(seconds: 1),
                                  image:
                                      'https://laco.akinoncdn.com/products/2022/03/11/177002/22a1abf4-79ce-46fa-9626-664b3d00e3dd_size600x600_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 140,
                                width: 130,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Üst Giyim',
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
                Wrap(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 30, left: 25),
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
                                  builder: (context) => lacosteKadinAlt()),
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
                                child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/loading2.gif',
                                  placeholderFit: BoxFit.cover,
                                  fadeOutDuration: Duration(seconds: 1),
                                  image:
                                      'https://cdn-occ.akinon.net/products/2020/09/18/246654/1a3aa019-fa7d-4a3f-8f5e-d7af0f110874_size780x780_quality100_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 140,
                                width: 130,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Alt Giyim',
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
                      padding:
                          const EdgeInsets.only(top: 20, right: 30, left: 10),
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
                                  builder: (context) => lacosteAksesuar()),
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
                                child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/loading2.gif',
                                  placeholderFit: BoxFit.cover,
                                  fadeOutDuration: Duration(seconds: 1),
                                  image:
                                      'https://laco.akinoncdn.com/products/2019/07/19/94429/187eab42-7247-4a7b-a286-4700e31e723d_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 140,
                                width: 130,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Aksesuar',
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
