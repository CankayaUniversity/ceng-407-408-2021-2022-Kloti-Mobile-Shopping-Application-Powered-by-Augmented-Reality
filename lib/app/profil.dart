import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/model/user_model.dart';
import 'package:flutter_kloti/app/show_images.dart';
import 'package:image_picker/image_picker.dart';
class ProfilPage extends StatefulWidget {
  UserM loggedInUser =UserM();
   ProfilPage({Key? key,required this.loggedInUser}) : super(key: key);

 
     
  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
    final TextEditingController _emailController=TextEditingController();
  
    File? _image;
  final imagePicker =ImagePicker();
  String? downloadURL;
  
   User? user=FirebaseAuth.instance.currentUser;
  
  showSnackBar(String snacktext,Duration d)
  {
    final snackBar=SnackBar(content: Text(snacktext),duration: d);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  Future uploadImage() async{
    FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
    final postID= DateTime.now().millisecondsSinceEpoch.toString();
    Reference ref=FirebaseStorage.instance.ref().child("${widget.loggedInUser.uid}/images").child("post_$postID");
    await ref.putFile(_image!);
    downloadURL=await ref.getDownloadURL();
    print(downloadURL);

  await firebaseFirestore.collection("users").doc(widget.loggedInUser.uid).collection("images").add({'profilURL':downloadURL}).whenComplete(() => showSnackBar("Fotoğraf değiştirme başarılı :)", const Duration(seconds: 2)));
   
  }
/* 
  
  void _kameradanFotoCek() async{
   final pick =await imagePicker.pickImage(source: ImageSource.camera);
    Navigator.of(context).pop();
    setState(() {
       _image=pick as File ;
    });
  } */

  void _galeridenResimSec() async{
   final pick =await imagePicker.pickImage(source: ImageSource.gallery);
     Navigator.of(context).pop();
    setState(() {
      if(pick!=null)
      {
        _image=File(pick.path);
      }
      else{
        showSnackBar("Dosya seçilmedi",const  Duration(microseconds: 400));
      }
    
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
                        height: 230,
                        child: Column(
                          children:  [
                             
                                ListTile(
                                leading: const Icon(Icons.image),
                                title: const Text("Galeriden seç"),
                                onTap: (){
                                  _galeridenResimSec();
                                },
                                
                                ),
                                 ListTile(
                                leading: const Icon(Icons.image),
                                title: const Text("Fotoğrafı yükle"),
                                onTap: (){
                                  if(_image!=null)
                                  {
                                  uploadImage();
                                  }
                                  else{
                                    showSnackBar("Önce fotoğraf seçin", const Duration(milliseconds: 400));
                                  }
                               
                                },
                                
                                ),
                                 ListTile(
                                leading: const Icon(Icons.image),
                                title: const Text("Fotoğrafı göster"),
                                onTap: (){
                                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowUploads(userId: widget.loggedInUser.uid)),
                      );
                                },
                                
                                ),
                                
                          ],
                        ),
                      );
                    });
                  },
                  child:   CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.blue.shade300,
                     child : _image==null ?const  Padding(
                       padding:  EdgeInsets.all(2.0),
                       child:  Center(child: Text("Fotoğraf seçilmedi.Seçmek için tıkla"),),
                     )
                     :    ClipOval(child: Image.file(_image!,alignment: Alignment.center,fit: BoxFit.cover,)),
                    
                  
                 
                  
                    
                  
                   
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration:  InputDecoration(
                    labelText: "Emailiniz",
                    hintText: "${widget.loggedInUser.email}",
                    border: OutlineInputBorder(),
                    
                    ),
                ),
              ),
            
              ElevatedButton(
                onPressed: (){
                  if(_image!=null)
                  {
                    uploadImage(); //Seçilen fotoyu Database e yükler
                    uploadEmail();
                  }
             

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

  void uploadEmail() async{
    FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;


  await firebaseFirestore.collection("users").doc(widget.loggedInUser.uid).update({'email':_emailController.text}).whenComplete(() => showSnackBar("Email değiştirme başarılı :)", const Duration(seconds: 2)));
   
  }

  
 

}