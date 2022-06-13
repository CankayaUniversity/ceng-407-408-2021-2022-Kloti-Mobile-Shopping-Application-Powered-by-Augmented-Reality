import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
class ForgotPassPage extends StatelessWidget {
   ForgotPassPage({Key? key}) : super(key: key);

 final _auth=FirebaseAuth.instance;
final _formKey = GlobalKey<FormState>();
final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade900,
        title: const Text('Şifreyi Yenile'),
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
            ],
              ),
        ),
      ),
        ElevatedButton(
                onPressed: (){
                  _auth.sendPasswordResetEmail(email: _emailController.text).then((value) => Navigator.of(context).pop());
                } ,
                child: const SizedBox.square(
                  child: Text(
                    'Şifre sıfırlama maili gönder',
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
}