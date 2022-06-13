import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/lacoste_erkek.dart';
import 'package:flutter_kloti/app/product_view_page.dart';

class lacosteKadinUst extends StatelessWidget {
  lacosteKadinUst({Key? key}) : super(key: key);

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
                                      const ProductViewPage()),
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
                                      'https://laco.akinoncdn.com/products/2022/03/08/176741/99fe210f-aa5a-4810-a0fe-b22fb1081a03_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Relaxed Fit',
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
                                      'https://laco.akinoncdn.com/products/2021/08/27/52566/ef9c9afe-000f-41f5-9436-b3229bc227f0_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                ' Slim Fit V Yaka',
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
                                      'https://laco.akinoncdn.com/products/2022/02/28/176981/e0dc88fd-39c1-4752-9268-68382f2df54b_size600x600_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Yeşil T-shirt',
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
                                      'https://cdn-occ.akinon.net/products/2020/09/28/251745/e30e19d2-fa58-4c61-8c0c-c289e4371b9f_size780x780_quality100_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Bisiklet Yaka',
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
                                      'https://laco.akinoncdn.com/products/2021/04/28/147462/d999ed56-2319-45dc-9ab8-0a64f22bd132_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Lacivert Uzun Kol',
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
                                'Kırmızı T-Shirt',
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
