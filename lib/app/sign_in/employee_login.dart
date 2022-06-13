import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_kloti/app/employeehomepage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EmployeeLogin extends StatefulWidget {
  EmployeeLogin({Key? key}) : super(key: key);

  @override
  State<EmployeeLogin> createState() => _EmployeeLoginState();
}

class _EmployeeLoginState extends State<EmployeeLogin> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
   final _auth=FirebaseAuth.instance;
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade900,
        title: const Text('Çalışan Girişi'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      
      body: Container(constraints: const BoxConstraints.expand(),
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
                height: 20,
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
        ElevatedButton(
                onPressed: (){
                     signIn(_emailController.text, _passwordController.text);
                } ,
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
            ],
        ),
      ),
      ),
   );
  }
   void signIn(String email,String password) async
  {
    if(_formKey.currentState!.validate())
    {
      await _auth.signInWithEmailAndPassword(email: email, password: password).then((uid) => {
        Fluttertoast.showToast(msg: "Giriş Başarılı"),
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EmployeeHomePage())),
      }).catchError((e)
      {
        Fluttertoast.showToast(msg: e!.toString());
      });
    }
  }
}