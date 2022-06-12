import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_kloti/app/AVVA.dart';
import 'package:flutter_kloti/app/Adidas.dart';
import 'package:flutter_kloti/app/Armani.dart';
import 'package:flutter_kloti/app/Armour.dart';
import 'package:flutter_kloti/app/Flo.dart';
import 'package:flutter_kloti/app/Kigili.dart';
import 'package:flutter_kloti/app/Penti.dart';
import 'package:flutter_kloti/app/Polo.dart';
import 'package:flutter_kloti/app/Reebok.dart';
import 'package:flutter_kloti/app/ZARA.dart';
import 'package:flutter_kloti/app/lacoste.dart';
import 'package:flutter_kloti/app/navigation_drawer_widget.dart';
import 'package:flutter_kloti/app/product_view_page.dart';

//import 'package:kloti_app/directions_model.dart';
//import 'package:kloti_app/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


//import 'package:dio/dio.dart';

//import 'navigation_drawer_widget.dart';

class AnaSayfa extends StatefulWidget {
// final UserM? user;
   AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
 

    Duration duration = const Duration();

  Timer? timer;

  bool isCountdown = true;

  int currentIndex = 0;

  int activeIndex = 0;


  final urlImages = [
    'https://cdn.sporthink.com.tr/UserFiles/FCK/image/haftan%C4%B1n_f%C4%B1rsatlar%C4%B1_kampanya_2.gif',
    'https://cdn.dribbble.com/users/811438/screenshots/13971582/media/d783e8d1037caa073d87c3b29580db3c.gif',
    'https://www.tchibo.com.tr/newmedia/page/img/128ec5597989451d/image_match.gif'
  ];

Future<bool?> _cikisYap(BuildContext context) async{
  //final _userModel=Provider.of<UserModel>(context,listen: false);
   //bool? sonuc= await _userModel.signOut();
  
  
  
//    return sonuc;
  }

  @override
  Widget build(BuildContext context) {
  
      
        return Scaffold(
           bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.yellow,
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
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,),
            label: 'Sepetim',
            backgroundColor: Colors.brown,
          ),
          const  BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profilim',
            backgroundColor: Colors.green,
          ),
        ],
      ),
          //anasayfa
         drawer: NavigationDrawerWidgett(),
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: const  Text('Kloti'),
            titleTextStyle: const  TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
                
                    /*  Container(
                       height: 200,
                       child: MyCustomBottomNavigation(sayfaOlusturucu: tumSayfalar(),currentTab: _currentTab, onSelectedTab: (secilenTab){
                         
                        }, ),
                     ), */
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Lacoste()),
                                );
                              },
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
                                          'assets/images/Lacoste.jpg'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Lacoste',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Kigili()),
                                );
                              },
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
                                          'assets/images/Kigili.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Kiğılı',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Avva()),
                                );
                              },
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
                                      image:
                                          AssetImage('assets/images/AVVA.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'AVVA',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  Adidas()),
                                );
                              },
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
                                          'assets/images/Adidas.jpg'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Adidas',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  Armour()),
                                );
                              },
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
                                          'assets/images/Under_Armour.jpg'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Armour',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ProductViewPage()),
                                );
                              },
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
                                      image:
                                          AssetImage('assets/images/Nike.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Nike',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  Flo()),
                                );
                              },
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
                                      image:
                                          AssetImage('assets/images/Flo.png'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Flo',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  Penti()),
                                );
                              },
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
                                      image:
                                          AssetImage('assets/images/Penti.jpg'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Penti',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Armani()),
                                );
                              },
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
                                          'assets/images/Armani.jpg'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Armani',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  Polo()),
                                );
                              },
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
                                      image:
                                          AssetImage('assets/images/polo.jpg'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'U.S Polo',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  Zara()),
                                );
                              },
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
                                      image:
                                          AssetImage('assets/images/Zara.jpg'),
                                      height: 55,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'ZARA',
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
                          padding: const EdgeInsets.only(
                              top: 30, right: 30, bottom: 20),
                          child: Material(
                            elevation: 12,
                            borderRadius: BorderRadius.circular(13),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.black12,
                            child: InkWell(
                              splashColor: Colors.black38,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  Reebok()),
                                );
                              },
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
                                          'assets/images/Reebok.jpg'),
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
        );
     
     
     
   
   /*  return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.yellow,
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
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,),
            label: 'Sepetim',
            backgroundColor: Colors.brown,
          ),
          const  BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profilim',
            backgroundColor: Colors.green,
          ),
        ],
      ),
    ); */
  }

  buildTimeCard({required String time, required String header}) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('urlImages', urlImages));
  }

  Widget buildImage(String urlImage, int index) => ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
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
              spacing: 13,
              activeDotColor: Colors.blue.shade900,
              dotColor: Colors.black26),
        ),
      );



}




