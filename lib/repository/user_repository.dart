import 'package:kloti_app/locator.dart';
import 'package:kloti_app/model/user_model.dart';
import 'package:kloti_app/services/auth_base.dart';
import 'package:kloti_app/services/fake_auth_service.dart';
import 'package:kloti_app/services/firebase_auth_service.dart';

enum AppMode{DEBUG,RELEASE}

class UserRepository implements AuthBase{

  final FirebaseAuthService _firebaseAuthService=locator<FirebaseAuthService>();
  final FakeAuthenticationService _fakeAuthenticationService=locator<FakeAuthenticationService>();
  AppMode appMode=AppMode.RELEASE;
  @override
  Future<UserM?> currentUser() async {
    if(appMode ==AppMode.DEBUG)
    {
      return await _fakeAuthenticationService.currentUser();
    }
    else{
      return await _firebaseAuthService.currentUser();
    }
  }

  @override
  Future<UserM?> signInAnonymously() async {
    if(appMode ==AppMode.DEBUG)
    {
      return await _fakeAuthenticationService.signInAnonymously();
    }
    else{
      return await _firebaseAuthService.signInAnonymously();
    }
    
  }

  @override
  Future<bool?> signOut() async{
    if(appMode ==AppMode.DEBUG)
    {
      return await _fakeAuthenticationService.signOut();
    }
    else{
      return await _firebaseAuthService.signOut();
    }
  }

  @override
  Future<UserM?> signInWithGoogle() async{
    if(appMode ==AppMode.DEBUG)
    {
      return await _fakeAuthenticationService.signInWithGoogle();
    }
    else{
      return await _firebaseAuthService.signInWithGoogle();
    }
  }

}