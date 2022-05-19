import 'package:flutter/material.dart';
import 'package:kloti_app/home_page.dart';

import 'package:kloti_app/service/auth.dart';



class SignUpp extends StatefulWidget {

  const SignUpp({Key? key}) : super(key: key);
    @override
  State<SignUpp> createState() => _SignUppState();
}
class _SignUppState extends State<SignUpp> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
     final  emailController = TextEditingController();
  final  passwordController =  TextEditingController();
  //final AuthService _authService= AuthService();
   final _nameController = TextEditingController();
   final _addressController = TextEditingController();
   final _phoneNumberController = TextEditingController();
   final _lastNameController = TextEditingController();
 

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Kayıt Ol'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
        body:  Container(
         constraints: const BoxConstraints.expand(),
          decoration:   BoxDecoration(
             gradient: LinearGradient(
                      colors: [Colors.white, Colors.lightBlue.shade100],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
            /*  image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/blueback.png'),
          ), */
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
             key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,  
            child: Column(
              children : [TextFormField(
                controller:_nameController,
                decoration:InputDecoration(
                  hintText: "Ad",
                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  filled: true,
                  icon: Icon(Icons.person_add_alt_rounded,color: Colors.blue.shade900),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  borderSide:BorderSide.none)),
                ),
                const SizedBox(
           height:14,
          ),
            TextFormField(
              controller: _lastNameController,
          decoration:InputDecoration(
            hintText: "Soyad",
            
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            icon: Icon(Icons.person_add_alt_rounded, color: Colors.blue.shade900),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            borderSide:BorderSide.none)),
          ),
          const  SizedBox(
           height:14,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            controller: emailController,
            autofocus: false,
          decoration:InputDecoration(
            hintText: "E-mail",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            icon: Icon(Icons.email_rounded, color: Colors.blue.shade900),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide:BorderSide.none)),
          ),
           const SizedBox(
           height:14,
          ),
          TextFormField(
            controller:_phoneNumberController,
            keyboardType: TextInputType.number,
          decoration:InputDecoration(
            hintText: "Telefon Numarası",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            icon: Icon(Icons.phone, color: Colors.blue.shade900),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            borderSide:BorderSide.none)),
          ),
           const SizedBox(
           height:14,
          ),
          TextFormField(
            controller: _addressController,
            keyboardType: TextInputType.streetAddress,
          decoration:InputDecoration(
            hintText: "Adres",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
              icon: Icon(Icons.home, color: Colors.blue.shade900),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            borderSide:BorderSide.none)),
          ),
          const  SizedBox(
           height:14,
          ),
          TextFormField(
            controller: passwordController,
          decoration:InputDecoration(
            hintText: "Şifre",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            icon: Icon(Icons.lock, color: Colors.blue.shade900),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:BorderSide.none),
            ),
              obscureText: true,
              
          
          ),
           const SizedBox(
           height:14,
          ),
                
                
                ],
            ),
          ),
              ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(onPressed:() {
               int vari = int.parse(_phoneNumberController.text);
             /*_authService.createCustomer(_nameController.text, _lastNameController.text,emailController.text, vari, _addressController.text,passwordController.text).then((value) {
                        return Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa(),));
                      });*/
            },
             child:   Text(
               "Kayıt Ol",
                style:TextStyle( fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue.shade900),
                
                
                
          
               ),
               style:ElevatedButton.styleFrom(
                 primary: Colors.blue.shade200,
                 shape:const StadiumBorder(),
                 padding:const EdgeInsets.symmetric(vertical:16),
          
               ),
               ),
          )
          
          
            ],
            ),
          ),
        )
 

     
    );
  }


    
  }


