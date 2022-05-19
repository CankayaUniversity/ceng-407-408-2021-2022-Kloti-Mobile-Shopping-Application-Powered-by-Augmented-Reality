 import 'package:cloud_firestore/cloud_firestore.dart';
 import 'package:firebase_auth/firebase_auth.dart';


 class AuthService {
   final FirebaseAuth auth = FirebaseAuth.instance;
   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

   Future<User?> signIn(String email , String password) async
   {
       var user = await auth.signInWithEmailAndPassword(email: email, password: password);
      return user.user;
   }
     signOut() async{
      return await auth.signOut();
    }
    Future<User?> createCustomer(String firstName,String lastName,String email, int phoneNumber,String address,String password) async{
       var user= await auth.createUserWithEmailAndPassword(email: email, password: password);
      await _firestore.collection('Customer')      .doc(user.user!.uid)
       .set({
         'firstName' : firstName,
         'lastName' : lastName,
         'email' : email,
         'password' : password,
         'phoneNumber' : phoneNumber,        'address' : address
      });
       return user.user;
}
     Future<User?> misafirGirisi() async {

     var user =await FirebaseAuth.instance.signInAnonymously();
      return user.user;
   
   }
    Future<User?> getCurrentUser() async {
String _firstname ='',_lastname='';
       User mCurrentUser = auth.currentUser!;
   /*   DocumentSnapshot item = await FirebaseFirestore.instance.collection('customers').doc(mCurrentUser.uid).get(); 
     _firstname = item['firstName'];
     _lastname = item['lastName']; */
    return mCurrentUser;
 }
 
   }
