import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/home_page.dart';

class OrderConfirmScreen extends StatefulWidget {
  const OrderConfirmScreen({Key? key}) : super(key: key);

  @override
  State<OrderConfirmScreen> createState() => _OrderConfirmScreenState();
}

class _OrderConfirmScreenState extends State<OrderConfirmScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.card_travel_rounded,
          color: Colors.black,
        ),
        title: Text("Satın Alımı Onayla",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 15.0),
                  Container(
                    width: size.width,
                    height: 55.0,
                    decoration: BoxDecoration(
                      border: _type == 2
                          ? Border.all(width: 1.0, color: Colors.black)
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                ),
                                Text('Nakit',
                                    style: _type == 2
                                        ? TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)
                                        : TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 150.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Kıyafet',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      Text('\₺849.00',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Kurye Ücreti',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      Text('\₺20.00',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Container(width: size.width, height: 1.0, color: Colors.grey),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Toplam Tutar',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      Text('\₺869.00',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 80.0),
                  GestureDetector(
                    onTap: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnaSayfa()),
                      );
                    },
                    child: Container(
                        height: 45.0,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: Text("Satın Al",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0)),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
