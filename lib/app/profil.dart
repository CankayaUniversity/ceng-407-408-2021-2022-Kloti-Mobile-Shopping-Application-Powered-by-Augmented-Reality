import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/model/user_model.dart';
import 'package:image_picker/image_picker.dart';
class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

 
     
  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
   final TextEditingController _emailController=TextEditingController();
    File? _profilFoto;
   final  _picker = ImagePicker();
  
   User? user=FirebaseAuth.instance.currentUser;
    UserM loggedInUser =UserM();


   @override
   void initState() {
     super.initState();
     FirebaseFirestore.instance
     .collection("users")
     .doc(user!.uid)
     .get()
     .then((value){
      loggedInUser=UserM.fromMap(value.data());
       setState(() {   
       });
     });
     
   }
  
  void _kameradanFotoCek() async{
    var _yeniResim =await _picker.pickImage(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {
       _profilFoto=_yeniResim as File ;
    });
  }

  void _galeridenResimSec() async{
     var _yeniResim =await _picker.pickImage(source: ImageSource.gallery);
     Navigator.of(context).pop();
    setState(() {
       _profilFoto=_yeniResim as File ;
    });
  }
      
  @override
  Widget build(BuildContext context) {
  
    
    return Scaffold(
     resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade900,
        title: const Text('Profili Düzenle'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context, builder: (context){
                      return Container(
                        height: 160,
                        child: Column(
                          children:  [
                              ListTile(
                                leading: const Icon(Icons.camera),
                                title: const Text("Kameradan Çek"),
                                onTap: (){
                                    _kameradanFotoCek();
                                },
                                
                                ),
                                ListTile(
                                leading: const Icon(Icons.image),
                                title: const Text("Galeriden seç"),
                                onTap: (){
                                  _galeridenResimSec();
                                },
                                
                                ),
                          ],
                        ),
                      );
                    });
                  },
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.transparent,
                    /*  backgroundImage:
                    NetworkImage("${loggedInUser.profilURL}"), */
                   
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _emailController,
            
                  decoration:  InputDecoration(
                    labelText: "Emailiniz",
                    hintText: "${loggedInUser.email}",
                    border: OutlineInputBorder(),
                    
                    ),
                ),
              ),
            
              ElevatedButton(
                onPressed: (){
              //      _emailGuncelle(context);

                },
                
                child: const SizedBox.square(
                  child: Text(
                    'Değişiklikleri Kaydet',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
              ),
              
      ],
      ),
      ),
      ),
    );
  }

  /* void _emailGuncelle(BuildContext context) async{
    //  final  _userModel=Provider.of<UserModel>(context);
      if(_userModel.user!.email!=_controllerEmail.text)
      { 
        var updateResult=await  _userModel.updateEmail(_userModel.user!.userID,_controllerEmail.text);
        if(updateResult==true)
        {
         
           const  PlatformDuyarliAlertDialog(
        baslik: "Başarılı",
        icerik: "Email değiştirildi",
        anaButonYazisi: "Tamam",
    );
        }
        else{
          _controllerEmail.text=_userModel.user!.email;
           const  PlatformDuyarliAlertDialog(
        baslik: "Başarısız",
        icerik: "Email zaten kullanımda,farklı bir email deneyiniz.",
        anaButonYazisi: "Tamam",
    );
        }
  }
  else{
   const  PlatformDuyarliAlertDialog(
        baslik: "Hata",
        icerik: "Email değişikliği yapmadınız",
        anaButonYazisi: "Tamam",
    );
  }
      }

      */
  
 

}