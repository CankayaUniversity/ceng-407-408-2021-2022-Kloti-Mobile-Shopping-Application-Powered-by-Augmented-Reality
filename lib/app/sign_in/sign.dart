
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_kloti/app/home_page.dart';
import 'package:flutter_kloti/app/model/user_model.dart';
import 'package:flutter_kloti/service/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpp extends StatefulWidget {

  const SignUpp({Key? key}) : super(key: key);
    @override
  State<SignUpp> createState() => _SignUppState();
}
class _SignUppState extends State<SignUpp> {

 
  final AuthService _authService=AuthService();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _fnameController=TextEditingController();
  final TextEditingController _lnameController=TextEditingController();
  final TextEditingController _addressController=TextEditingController();
  final TextEditingController _phoneController=TextEditingController();


   final _formKey = GlobalKey<FormState>();
   final _auth=FirebaseAuth.instance;
   
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
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
           
          ),
          child: SingleChildScrollView(
            child: Expanded(
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
                    controller: _fnameController,
                        validator: (value)
                        {RegExp regex= new RegExp(r'^.{3,}$');
                          if (value!.isEmpty) {
                            
                            return 'İsim boş olamaz';
                          } 
                          if (!regex.hasMatch(value)) {
                            return 'Lütfen en az 3 karakter giriniz.';
                        }
                        return null;
                        },
                    textInputAction: TextInputAction.next,
                    onSaved: (value){
                      _fnameController.text=value!;
                    },
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
               controller: _lnameController,
                validator: (value)
                        {
                          if (value!.isEmpty) {
                            
                            return 'Soyisim boş olamaz';
                          } 
                          return null;
                        },
                onSaved: (value){
                      _lnameController.text=value!;
                    },
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
                 
                      const  SizedBox(
                       height:14,
                      ),
                      TextFormField(
                controller: _emailController,
                validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email boş olamaz';
                          } 
                          if (!EmailValidator.validate(value)) {
                            return 'Geçerli bir mail giriniz.';
                          } 
                          
                          return null;
                        },
                 onSaved: (value){
                      _emailController.text=value!;
                    },
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
                       
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
                 controller: _phoneController,
                  onSaved: (value){
                      _phoneController.text=value!;
                    },
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
                        onSaved: (value){
                      _addressController.text=value!;
                    },
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
              controller: _passwordController,
               validator: (value)
                        {RegExp regex= new RegExp(r'^.{6,}$');
                          if (value!.isEmpty) {
                            
                            return 'Şifre boş olamaz';
                          } 
                          if (!regex.hasMatch(value)) {
                            return 'Lütfen en az 6 karakter giriniz.';
                        }},
              textInputAction: TextInputAction.done,
               onSaved: (value){
                      _passwordController.text=value!;
                    },
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
              child: ElevatedButton( onPressed: (){
                signUp(_emailController.text, _passwordController.text);
           /*  _authService.createCustomer(_fnameController.text, _lnameController.text, _emailController.text, int.parse(_phoneController.text), _addressController.text, _passwordController.text).then((value) {
                    return Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa(),));
                  }); */
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
          ),
        )
 

     
    );
  }

  void signUp(String email,String password) async{
    if(_formKey.currentState!.validate())
    {
        await _auth.createUserWithEmailAndPassword(email: email, password: password).then((value) => {
          postDetailstoFirestore()
        }).catchError((e)
        {
          Fluttertoast.showToast(msg: e!.toString());
        });
    }
  }

  postDetailstoFirestore() async{
    FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
    User? user=_auth.currentUser;
    UserM userM =UserM();
    userM.email=user!.email;
    userM.uid=user.uid;
    userM.firstName=_fnameController.text;
    userM.lastName=_lnameController.text;
    userM.address=_addressController.text;
    userM.phoneNumber=_phoneController.text;
   
  await firebaseFirestore
    .collection("users")
    .doc(user.uid)
    .set(userM.toMap());

  Fluttertoast.showToast(msg: "Hesap başarıyla oluşturuldu.");
  Navigator.push(context, MaterialPageRoute(builder: (context)=>AnaSayfa()));
  }
    
  }


