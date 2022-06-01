import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/lacoste_erkek.dart';


class lacosteKadinAyakkabi extends StatelessWidget {
  lacosteKadinAyakkabi({Key? key}) : super(key: key);

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
                                      'https://cdn-occ.akinon.net/products/2021/10/04/255962/29517327-47e7-4da9-bf6d-fa8ae96330f5_size780x780_quality100_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Gripshot 120',
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
                                      'https://laco.akinoncdn.com/products/2022/03/07/170467/0e35ce78-5010-4834-a645-f1450a753e9b_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Lerond',
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
                                      'https://cdn.exxeselection.com/lacoste-court-deri-bayan-ayakkabi-741sfa0076-1y9-2204020-27-B.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Court',
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
                                      'https://laco.akinoncdn.com/products/2021/08/11/157963/55a77039-6258-4642-8f6e-cff41672b938_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'L001',
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
                                      'https://laco.akinoncdn.com/products/2021/08/25/158532/385ff1e1-8597-46b2-8ec0-fd35516e654d_size2000x2000_cropCenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Gripshot 0321',
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
                                  fadeOutDuration: const Duration(seconds: 1),
                                  image:
                                      'https://laco.akinoncdn.com/products/2019/12/30/96595/350b566f-1b2a-44ed-ba99-27dd8980a1d5.jpg',
                                  fit: BoxFit.cover,
                                ),
                                height: 200,
                                width: 155,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Court Slam 319',
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