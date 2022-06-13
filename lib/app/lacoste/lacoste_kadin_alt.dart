import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/lacoste_erkek.dart';
import 'package:flutter_kloti/app/product_view_page.dart';
import 'package:flutter_kloti/app/product_view_page2.dart';

class lacosteKadinAlt extends StatelessWidget {
  lacosteKadinAlt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Kloti'),
        titleTextStyle: const TextStyle(
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
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
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
                                  builder: (context) =>
                                      const ProductViewPage2()),
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
                                      'https://cdn-occ.akinon.net/products/2020/07/29/247987/38443061-6203-46b0-a076-60f0463340a1_size780x780_quality100_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Motion Gri',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
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
                                  builder: (context) => LacosteErkek()),
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
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Motion Bordo',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(
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
                      padding: const EdgeInsets.only(top: 5),
                      child: Material(
                        elevation: 12,
                        borderRadius: BorderRadius.circular(13),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.black12,
                        child: InkWell(
                          splashColor: Colors.white54,
                          onTap: () {
                            /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const lacosteKadinAyakkabi()),
                            );*/
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
                                      'https://laco.akinoncdn.com/products/2022/03/08/171848/33034e2f-5dab-4ea5-88bc-7bb275800b24_size600x600_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Joggers',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
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
                                  builder: (context) => LacosteErkek()),
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
                                      'https://cdn-occ.akinon.net/products/2021/03/11/302604/26dbd655-baea-4dae-8cf8-acdf326165b7.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Sarı Eşofman',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(
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
                      padding: const EdgeInsets.only(top: 5, right: 170),
                      child: Material(
                        elevation: 12,
                        borderRadius: BorderRadius.circular(13),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.black12,
                        child: InkWell(
                          splashColor: Colors.white54,
                          onTap: () {
                            /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const lacosteKadinAyakkabi()),
                            );*/
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
                                      'https://www.haysshop.com/media/image/7078/kadin-lacoste-bol-paca-esofman-alt-1-gul-kurusu-pembe-1.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                ' Bol Paça Pembe',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(
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
              style: const TextStyle(
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
            style: const TextStyle(color: Colors.white),
          )
        ],
      );
}
