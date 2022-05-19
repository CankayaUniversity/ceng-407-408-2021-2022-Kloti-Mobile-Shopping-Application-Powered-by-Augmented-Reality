
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kloti_app/model/user_model.dart';
import 'package:kloti_app/services/auth_base.dart';

class FirebaseAuthService implements AuthBase{
  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  @override
  Future<UserM?> currentUser() async {
    try{
      User? user=  _firebaseAuth.currentUser!;
      return _userFromFirebase(user);  
    }catch(e)
    {
      print('Hata current user' + e.toString());
      return null;
    }
   
  }

  UserM? _userFromFirebase(User? user){
    if(user == null){
      return null;
    }
    return UserM(userID: user.uid);
  }


  @override
  Future<UserM?> signInAnonymously() async{

    try{
      UserCredential sonuc= await _firebaseAuth.signInAnonymously();
      return _userFromFirebase(sonuc.user);
    }catch(e)
    {
      print('Anonim giriş hata '+ e.toString());
      return null;
    }

  }

  @override
  Future<bool?> signOut() async{
    try{
      final _googleSignIn =GoogleSignIn();
      await _googleSignIn.signOut();
      await _firebaseAuth.signOut();
      return true;
    }catch(e)
    {
        print('Sign out Hata ' +e.toString());
         return false;
    }  
  }

  @override
  Future<UserM?> signInWithGoogle() async{
    try{
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? _googleUser = await _googleSignIn.signIn();
 
    if(_googleUser != null){
      GoogleSignInAuthentication _googleAuth = await _googleUser.authentication;
      if(_googleAuth.idToken != null && _googleAuth.accessToken != null){
        AuthCredential credential =  GoogleAuthProvider.credential(idToken: _googleAuth.idToken, accessToken: _googleAuth.accessToken);
        UserCredential authResult = await _firebaseAuth.signInWithCredential(credential);
        User? user = authResult.user;
        return _userFromFirebase(user);
      }
    
    }
    
  }catch(e){
    print('Error signInWithGoogle ==> '+e.toString());
    return null;
  }}
}