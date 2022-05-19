import 'package:kloti_app/model/user_model.dart';

abstract class AuthBase{
  Future<UserM?> currentUser();
  Future<UserM?> signInAnonymously();
  Future<bool?> signOut();
  Future<UserM?> signInWithGoogle();
}