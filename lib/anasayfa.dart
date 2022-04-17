import 'dart:async';

//import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:kloti_app/directions_model.dart';
//import 'package:kloti_app/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//import 'package:dio/dio.dart';

//import 'navigation_drawer_widget.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  Duration duration = Duration();
  Timer? timer;

  bool isCountdown = true;
  int currentIndex = 0;
  int activeIndex = 0;

  final urlImages = [
    'https://r.resimlink.com/bmcGI34qhs5.jpg',
    'https://r.resimlink.com/ngBAKvSw2CD4.gif',
    'https://r.resimlink.com/jOn9M8Fi.jpg'
  ];
  final companyImages = [
    ["assets/images/Adidas.png", "caption1"],
    ["assets/images/Armani.jpg", "caption2"],
    ["assets/images/AVVA.png", "this is a big text"],
    ["assets/images/Flo.png", "This is almost a bigger text"],
    ["assets/images/Kigili.png", "oh no this a really really big text"],
    ["assets/images/Lacoste.jpg", "yes small one"],
    ["assets/images/Nike.png", "oh no this a really really big text"],
    ["assets/images/Penti.jpg", "yes"],
    ["assets/images/polo.jpg", "yes"],
    ["assets/images/Reebok.png", "yes"],
    ["assets/images/Under_Armour.jpg", "yes"],
    ["assets/images/zara.jpg", "yes"],
  ];

  @override
  Widget build(BuildContext context) {
    final screens = [
      Center(
        child: Scaffold(
          //anasayfa
          //drawer: NavigationDrawerWidget(),
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Kloti'),
            titleTextStyle: TextStyle(
              color: Colors.cyan,
              fontSize: 20,
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.blueAccent.shade200,
                  Colors.lightBlue.shade400.withOpacity(0.5)
                ])),
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
                    buildIndicator(),
                  ],
                ),
                Column(
                  children: [
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, right: 50, left: 35),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                          padding: const EdgeInsets.only(top: 30, right: 50),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                          padding: const EdgeInsets.only(top: 30, right: 30),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                      ],
                    ),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, right: 50, left: 35),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                          padding: const EdgeInsets.only(top: 30, right: 50),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                          padding: const EdgeInsets.only(top: 30, right: 30),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                      ],
                    ),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, right: 50, left: 35),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                          padding: const EdgeInsets.only(top: 30, right: 50),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                          padding: const EdgeInsets.only(top: 30, right: 30),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                      ],
                    ),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, right: 50, left: 35),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                          padding: const EdgeInsets.only(top: 30, right: 50),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                          padding: const EdgeInsets.only(top: 30, right: 30),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: Colors.black45, width: 2),
                                        shape: BoxShape.rectangle),
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Reebok.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Reebok',
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
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      Scaffold(
        //Aktivite Oluştur
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Image.asset(
            'assets/images/launchimage.png',
            fit: BoxFit.fitWidth,
            height: 40,
          ),
          centerTitle: true,
        ),
        /*body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black12,
            Colors.black26,
            Colors.brown.shade300
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: ListView(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0, top: 10),
                      child: SizedBox(
                        width: 100,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            startTimer();
                          },
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.green,
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey.shade800),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: 100,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildTimeCard(time: hours, header: 'HOURS'),
                        const SizedBox(width: 8),
                        buildTimeCard(time: minutes, header: 'MINUTES'),
                        const SizedBox(width: 8),
                        buildTimeCard(time: seconds, header: 'SECONDS'),
                      ],
                    ),
                    height: 180,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.brown.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),*/
      ),
      Scaffold(
        //Geçmiş Aktivitelerim
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Image.asset(
            'assets/images/launchimage.png',
            fit: BoxFit.fitWidth,
            height: 70,
          ),
          centerTitle: true,
        ),

        /* body: ListView(
          children: [
            for (int i = 0; i < 7; i++)
              Card(
                margin: EdgeInsets.only(top: 15),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/gecmisaktivite.png',
                    width: 64,
                    height: 64,
                    color: Colors.indigo,
                  ),
                  title: Text('Geçmiş Aktivitem ${i + 1}'),
                  tileColor: Colors.greenAccent,
                  contentPadding: EdgeInsets.all(2),
                  horizontalTitleGap: 25,
                  hoverColor: Colors.black,
                  onTap: () {},
                  subtitle: Text('${i + 1}/08/2021'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.redAccent,
                  ),
                ),
              ),
          ],
        ),*/
        backgroundColor: Colors.green.shade300,
      ),
    ];
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.greenAccent.shade400,
        currentIndex: currentIndex,
        showUnselectedLabels: false,
        iconSize: 28,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
            backgroundColor: Colors.blue.shade900,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag_rounded),
            label: 'Aktivite Olustur',
            backgroundColor: Colors.brown,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Gecmiş Aktivitelerim',
            backgroundColor: Colors.green,
          ),
        ],
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
            fit: BoxFit.cover,
          ),
        ),
      );

  buildIndicator() => Container(
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: urlImages.length,
          effect: SlideEffect(
              dotWidth: 15, //trello
              dotHeight: 14,
              spacing: 20,
              activeDotColor: Colors.blue.shade900,
              dotColor: Colors.black26),
        ),
      );
}
