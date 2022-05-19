 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:kloti_app/forgotpasspage.dart';
import 'package:kloti_app/home_page.dart';
import 'package:kloti_app/model/user_model.dart';
import 'package:kloti_app/service/auth.dart';
import 'package:kloti_app/sign.dart';
import 'package:kloti_app/viewmodel/user_model.dart';
import 'package:provider/provider.dart';

class MyLogin extends StatefulWidget {
  
    void _misafirGirisi(BuildContext context) async{
      final _userModel=Provider.of<UserModel>(context,listen: false);
    UserM? _user= await _userModel.signInAnonymously();
    print("Oturum açan user id : " + _user!.userID.toString());
  }
   void _googleIleGiris(BuildContext context) async{
    final _userModel=Provider.of<UserModel>(context,listen: false);
    UserM? _user= await _userModel.signInWithGoogle();
    if(_user !=null) {
      print("Oturum açan user id : " + _user.userID.toString());
    }

   }

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  
  late FirebaseAuth auth ;
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance
   .userChanges()
   .listen((User? user) {
    if (user == null) {
      debugPrint('User oturumu kapalı');
    } else {
      debugPrint('User oturum açık ${user.email} ve email durumu ${user.emailVerified}');
    }
  });
    
    
  }
  String _email = '', _password = '';
  final _formKey = GlobalKey<FormState>();
  final  emailController = TextEditingController();
  final  passwordController =  TextEditingController();
  final AuthService _authService= AuthService();

  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  /* _formSubmit(context) {
     _formKey.currentState?.save();
     debugPrint('email : '+ _email + 'şifre :' + _password);
    
    } */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Giriş Yap'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      
      body: //FractionallySizedBox(
          //  heightFactor: 1,
          //child:
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
                        textInputAction: TextInputAction.next,
                        controller: emailController,
                        autofocus: false,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
                          ),
                          hintText: 'Email Giriniz',
                          icon: Icon(Icons.person, color: Colors.blue.shade900),
                        ),
                        onSaved: (value) {
                          _email = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email boş olamaz';
                          } else if (!EmailValidator.validate(value)) {
                            return 'Geçerli bir mail giriniz.';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
                          ),
                          hintText: 'Şifre giriniz',
                          icon: Icon(Icons.lock, color: Colors.blue.shade900),
                        ),
                        onSaved: (value) {
                          _password = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Şifre boş olamaz';
                          } else if (value.length < 6) {
                            return 'Şifre en az 6 karakterli olmalı ';
                          } else {
                            return null;
                          }
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
                onPressed: () {
                  _authService.signIn(emailController.text, passwordController.text).then((value) {
                    return Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa(user:null,),));
                  });
                },
                 
                 /*  bool _validate = _formKey.currentState!.validate();
                  if (_validate) {
                    _formKey.currentState!.save();
                    String result = 'email: $_email\npassword: $_password';
                    String result2 = 'Başarılı giriş';
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.white.withOpacity(0.8),
                        content: Text(
                          result2,
                          style: TextStyle(
                              fontSize: 20, color: Colors.blue.shade900),
                        ),
                      ),
                      
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => AnaSayfa()),
                    );
                    _formKey.currentState!.reset();
                  }
                  loginUserEmailAndPassword(); */
                // },
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
              ElevatedButton(onPressed: ()=>widget._googleIleGiris(context),child: const SizedBox.square(
                  child: Text(
                    'Gmail İle Giriş Yap',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),),
               const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassPage()),
                  );
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
                            builder: (context) => SignUpp()),
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
              TextButton(
                onPressed: () =>widget._misafirGirisi(context),
                 
                
                child: const Text(
                  'Misafir kullanıcı olarak giriş yap',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
         
              
            ],
          ),
        ),
      ),
      //),
    );
  }

   Future signIn() async{

    
     try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim()
      );
    } on FirebaseAuthException catch (e)
     {
       print(e);
     }
     Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>AnaSayfa(user: null,),),
                    );
   }

 
   }

 