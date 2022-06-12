
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_kloti/app/home_page.dart';
import 'package:flutter_kloti/app/model/user_model.dart';
import 'package:flutter_kloti/app/sign_in/sign.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';



class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  
  
   
  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> with ChangeNotifier{
  final _auth=FirebaseAuth.instance;
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final _googleSignIn =GoogleSignIn();
   UserM? userM;
 
 
  GoogleSignInAccount? googleSignInAccount;
 

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   
   
    return Scaffold(
       
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade900,
        title: const Text('Giriş Yap'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      
      body:
         Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/flat.png'),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(  
            children: [
              Padding( //İçindeki elemanlara boşluk sağla
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade800, Colors.lightBlue.shade200],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 52,
                      backgroundImage:
                          AssetImage('assets/images/launchimage.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        textInputAction: TextInputAction.next,
                        autofocus: false,
                        decoration: InputDecoration(
                   //       errorText: _userModel.emailHataMesaji,
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
                          ),
                          hintText: 'Email Giriniz',
                          icon: Icon(Icons.person, color: Colors.blue.shade900),
                        ),
                        onSaved: (value) {
                          _emailController.text=value!;
                          
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email boş olamaz';
                          } 
                           if (!EmailValidator.validate(value)) {
                            return 'Geçerli bir mail giriniz.';
                          } 
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                      
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
                          ),
                          hintText: 'Şifre giriniz',
                          icon: Icon(Icons.lock, color: Colors.blue.shade900),
                        ),
                        validator: (value)
                        {RegExp regex= new RegExp(r'^.{6,}$');
                          if (value!.isEmpty) {
                            
                            return 'Şifre boş olamaz';
                          } 
                          if (!regex.hasMatch(value)) {
                            return 'Lütfen en az 6 karakter giriniz.';
                        }},
                        onSaved: (value) {
                         _passwordController.text=value!;
                        },
                        
                        
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: (){
                  signIn(_emailController.text, _passwordController.text);
                },
                   
                child: const SizedBox.square(
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
              ),
              const SizedBox(
                height: 10,
              ),
              /*ElevatedButton(onPressed: () {
             
              },child: const SizedBox.square(
                  child: Text(
                    'Google İle Giriş Yap',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),),*/
               const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                /*   Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassPage()),
                  ); */
                },
                child: Text(
                  'Şifremi unuttum',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kloti hesabınız yok mu ?",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpp()),
                      );
                    },
                    child: const Text(
                      'Şimdi oluşturun',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      )
      

    );
  }
  void signIn(String email,String password) async
  {
    if(_formKey.currentState!.validate())
    {
      await _auth.signInWithEmailAndPassword(email: email, password: password).then((uid) => {
        Fluttertoast.showToast(msg: "Giriş Başarılı"),
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnaSayfa())),
      }).catchError((e)
      {
        Fluttertoast.showToast(msg: e!.toString());
      });
    }
  }

 
}

  

 