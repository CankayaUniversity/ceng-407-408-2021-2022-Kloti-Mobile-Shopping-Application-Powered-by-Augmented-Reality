
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kloti/app/model/user_model.dart';
import 'package:flutter_kloti/app/profil.dart';
import 'package:flutter_kloti/app/sign_in/my_login.dart';
import 'package:google_sign_in/google_sign_in.dart';





  class NavigationDrawerWidgett extends StatefulWidget {

 const NavigationDrawerWidgett({Key? key}) : super(key: key);
    @override
   State<NavigationDrawerWidgett> createState() => _NavigationDrawerWidgettState();
 }
 class _NavigationDrawerWidgettState extends State<NavigationDrawerWidgett> {
  

   User? user=FirebaseAuth.instance.currentUser;
    final _googleSignIn =GoogleSignIn();

     GoogleSignInAccount? googleSignInAccount;
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
  String? uid,email,fName,lName,profilUrl;

  
   @override
   Widget build(BuildContext context) {
  
     return Drawer(
       child: Material(
         color:Colors.blue.shade900,
         child: ListView(
           children:  <Widget> [
              DrawerHeader(child: Row(
               children:   [
                    CircleAvatar(
                   radius: 40,
                   backgroundColor: Colors.white,
                   child: CircleAvatar(
                    radius: 30,
                  child: Image.asset("assets/images/guestuser.png"),
                     backgroundColor: Colors.blue,
                    
                    
                   ),
                ),               const  SizedBox(
                   width: 20,
                 ),
                Expanded(
                  child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("${loggedInUser.firstName} ${loggedInUser.lastName}",
                             style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                           ),
                         
                              Text("${loggedInUser.email}",
                             style: const TextStyle(color: Colors.white),),
                         
                        
                         ],
                       ),
                ),
              ],
             ),
             ), 
 
           
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                 children: [
                
                   const SizedBox(height: 16),
               ListTile(
                hoverColor: Colors.blue,
               title:  const Text('Profili Düzenle',
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                  fontSize: 16,               ),
               ),
               leading:  const Icon(Icons.person,color:Colors.white),
               onTap: (){
                 
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProfilPage(loggedInUser: loggedInUser,)),);
               },
              
             ), 
                ListTile(
                     hoverColor: Colors.blue,
                     title:  const Text('Çıkış Yap',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                     ),
                     ),                  leading: const Icon(Icons.note_add_rounded,color: Colors.white),
                     onTap: (){
                       
                       logout(context);
                    
                     
                     },
                  ),
                   const SizedBox(height: 16),
                 ],
               ),
             ),
            
              const SizedBox(height: 20),
             const  Divider(color: Colors.white,thickness: 1),
             const SizedBox(height: 20),
           ],
         ),
      ),
     );


   }
   Future<void> logout(BuildContext context) async{
     await FirebaseAuth.instance.signOut();
   //  this.googleSignInAccount =await _googleSignIn.signOut();
   //notifyListeners();
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MyLogin()));
   }
   void  resim(){
 
    StreamBuilder(stream:FirebaseFirestore.instance.collection("users").doc(loggedInUser.uid).collection("images").snapshots() ,builder: (BuildContext context,AsyncSnapshot snapshot)
      {
       
       
          return CircleAvatar(
            child: Image.network(snapshot.data!,height: 300,fit: BoxFit.cover,),
          );
           
           
        
        
                 
                  
                   
                  
        }
      );
  
  }

   } 