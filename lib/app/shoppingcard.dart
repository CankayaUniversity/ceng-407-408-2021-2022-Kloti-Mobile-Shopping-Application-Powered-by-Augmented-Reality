import 'package:flutter/material.dart';
import 'package:flutter_kloti/shopping/payment_page.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined, color: Colors.black, size: 18.0),
        title: Text("Cart", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        image: DecorationImage(image: AssetImage("assets/images/nikets.jpg"), fit: BoxFit.cover)
                      ),
                    ),
                    const SizedBox(width: 30.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10.0),
                        Text('Nike T-shirt', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.black)),
                        const SizedBox(height: 7.0),
                        Text('NIKE Men\'s T-shirt | US7.5', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, color: Colors.grey)),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text('\$120', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w600, color: Colors.black)),
                            const SizedBox(width: 120.0),
                            Text('x 1', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                
                const SizedBox(height: 180.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub-total', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey)),
                    Text('\$280.00', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black)),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping fee', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey)),
                    Text('\$15.00', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black)),
                  ],
                ),
                const SizedBox(height: 15.0),
                Container(width: size.width, height: 1.0, color: Colors.grey),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Payment', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black)),
                    Text('\$295.00', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Colors.black)),
                  ],
                ),
                const SizedBox(height: 70.0),
                GestureDetector(
                  onTap: (){
                     Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderConfirmScreen()),
                                      );
                  },
                  child: Container(
                      height: 45.0,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: Center(
                        child: Text("SatÄ±n Al", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15.0)),
                      )
                  ),
                ),
                const SizedBox(height: 20.0),
                Center(child: Text('Continue Shopping', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600, color: Colors.black54)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
