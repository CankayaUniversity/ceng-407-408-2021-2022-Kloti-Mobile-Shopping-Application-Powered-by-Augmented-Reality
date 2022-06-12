import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/lacoste_erkek.dart';

class lacosteAksesuar extends StatelessWidget {
  lacosteAksesuar({Key? key}) : super(key: key);

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
                                      'https://laco.akinoncdn.com/products/2021/03/29/108590/62cd2a3c-3f0d-41e7-a159-74df3858c75f_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Gri Saç Bandı',
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
                                      'https://laco.akinoncdn.com/products/2021/11/26/160445/a99e3c01-04b2-42de-96c4-c1c77177260d.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Anna Çanta',
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
                                      'https://laco.akinoncdn.com/products/2021/08/02/155013/52ccfa75-8447-40b3-8fee-2abbee538714_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.fill,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Güneş Gözlüğü',
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
                                      'https://laco.akinoncdn.com/products/2019/07/22/96122/36f93d70-c457-4058-8789-b720ed06c484.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Cüzdan',
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
                                      'https://laco.akinoncdn.com/cms/2018/11/13/9e04c948-92fc-4c93-a758-5d6435643a3d.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Kırmızı Çanta',
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
                                      'https://laco.akinoncdn.com/products/2021/09/15/6494/d08de7ac-09ab-4434-8093-3da70d17f13a_size600x600_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Gri Çorap',
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
