/*  void createUserEmailAndPassword() async {
    try {
       var _userCredential = await auth.createUserWithEmailAndPassword(email: _email, password: _password);
       var _myUser =  _userCredential.user;
       if(!_myUser!.emailVerified) {
           await _myUser.sendEmailVerification();
       }
       else
       {
          debugPrint('kullanıcının maili onaylanmış');
       }
       
       debugPrint(_userCredential.toString());
      
    }
    catch(e)
    {
      debugPrint(e.toString());
    }
  }
  void loginUserEmailAndPassword() async{
  
   try{
  
    var _userCredential= await auth.signInWithEmailAndPassword(email: _email2, password: _password);
    debugPrint(_userCredential.toString());
  }catch(e){
    debugPrint(e.toString()); 
 
  }
}
void signOutUser() async {
  await auth.signOut();
}
void deleteUser() async {
  if(auth.currentUser!=null)
  {
    await auth.currentUser!.delete();
  }
  else
  {
    debugPrint('Kullanıcı oturum açmadığı için silinemez.');
  }
  
}
void changePassword() async {
  try{
 await auth.currentUser!.updatePassword('yeni');
 await auth.signOut();
  }
  on FirebaseAuthException catch(e){
    if(e.code == 'requires-recent-login')
    {
      debugPrint('reauthenicate olunacak');
      var credential= EmailAuthProvider.credential(email: _email, password: _password);
      await auth.currentUser!.reauthenticateWithCredential(credential);
      await auth.currentUser!.updatePassword('yeni');
      await auth.signOut();
      debugPrint('Şifre güncellendi');
     
    }
  }
  catch(e)
  {
    debugPrint(e.toString());
  }
 
}
void googleIleGiris() async {

}
void changeEmail() async {
  try{
 await auth.currentUser!.updateEmail('lacinboz1@gmail.com');
 await auth.signOut();
  }
  on FirebaseAuthException catch(e){
    if(e.code == 'requires-recent-login')
    {
      debugPrint('reauthenicate olunacak');
      var credential= EmailAuthProvider.credential(email: _email, password: _password);
      await auth.currentUser!.reauthenticateWithCredential(credential);
      await auth.currentUser!.updateEmail('lacinboz1@gmail.com');
      await auth.signOut();
      debugPrint('Email güncellendi');
     
    }
  }
  catch(e)
  {
    debugPrint(e.toString());
  }
 
} */