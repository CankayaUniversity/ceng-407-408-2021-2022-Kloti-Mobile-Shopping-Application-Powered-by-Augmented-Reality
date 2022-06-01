import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/ar_page.dart';
import 'package:flutter_kloti/app/shoppingcard.dart';


void main() => runApp(const ProductViewPage());

class ProductViewPage extends StatelessWidget {
  const ProductViewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        //backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: size.height * 0.3), // beyaz kısım için
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: 20,
                        right: 20), //Childin hizalanmasını sağladı.
                    // height: 500,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              24), //beyaz kısmın yuvarlak olması için
                          topRight: Radius.circular(24),
                        )),
                    child: Column(
                      children: [
                        const ColorAndSize(),
                        const Description(),
                        const CounterWithFavBtn(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                height: 50,
                                width: 58,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                        //color:product.color,
                                        color: Colors.blue.shade400)),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.shopping_cart,
                                    color: Colors.redAccent,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ShoppingCard()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        primary: Colors.blue.shade400),
                                    child: Text(
                                      'Sepete Ekle'.toUpperCase(),
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nike T-Shirt',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Spor',
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),

                        const SizedBox(
                            height: 10), // Price ve resmi aşağı indirir.

                        /*    Text(product.title,style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white,fontWeight: FontWeight.bold),), */
                        Row(
                          children: <Widget>[
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(text: 'Fiyat\n'),
                                  TextSpan(
                                    text: '399.99 TL',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: SizedBox(
                                width: 70,
                              ), //resim ile priceın arasındaki boşluk
                            ),
                            Expanded(
                              child: Image.asset(
                                'assets/images/nikets.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        SizedBox(
          height: 35,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArPage()),
              );
            },
            /*  async{
                                await availableCameras().then(value)=>
                                 Navigator.push( context, MaterialPageRoute(
                                        builder: (context) => const CameraPage(cameras :value)),
                                       );
                                      
                              }, */
            child: const Icon(Icons.camera_alt),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: Image.asset('assets/images/heart.png'),
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        'Klasik kesimli Nike Air t-shirt, pürüzsüz yapılı/n ve günlük kullanıma uygun pamuklu kumaştan üretildi. Model, Ait Futura logosu ve kuş bakışı manzarayı bir araya getiren grafik baskılara sahip. Rahat kesime sahip bu modelde kullanılan pamuklu kumaş yumuşak ve hafifken, baskılı grafikler, yumuşak ve pürüzsüzdür.',
        style: TextStyle(height: 1.5, fontStyle: FontStyle.italic),
      ),
    );
  }
}

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Text(
                  'Renk Seçenekleri',
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: const [
                  ColorDot(color: Colors.black, isSelected: true),
                  ColorDot(color: Colors.amber, isSelected: true),
                  ColorDot(color: Colors.grey, isSelected: true),
                  ColorDot(color: Colors.red, isSelected: true),
                ],
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                style:
                    TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
                text: "Beden\n",
              ),
              TextSpan(
                text: "S",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        // Yuvarlağın hizalanması
        top: 5,
        right: 10,
      ),
      padding: const EdgeInsets.all(2.5), //Decorated box tan uzaklığı borderı
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numOfItems > 1) {
                  numOfItems--;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, VoidCallback? press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
