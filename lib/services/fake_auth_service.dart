import 'package:kloti_app/model/user_model.dart';
import 'package:kloti_app/services/auth_base.dart';

class FakeAuthenticationService implements AuthBase{
  String userID="123";
  @override
  Future<UserM?> currentUser() async{
    return await Future.value(UserM(userID: userID));
  }

  @override
  Future<UserM?> signInAnonymously() async{
    return await Future.delayed(const Duration(seconds: 2 ),
    ()=>UserM(userID:userID));
  }

  @override
  Future<bool?> signOut() {
   return Future.value(true);
  }

  @override
  Future<UserM?> signInWithGoogle() async{
     return await Future.delayed(const Duration(seconds: 2 ),
    ()=>UserM(userID:userID));
  }

}
