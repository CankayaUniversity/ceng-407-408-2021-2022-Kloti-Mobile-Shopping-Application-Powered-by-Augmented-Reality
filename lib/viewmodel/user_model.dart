
import 'package:flutter/material.dart';
import 'package:kloti_app/locator.dart';
import 'package:kloti_app/model/user_model.dart';
import 'package:kloti_app/repository/user_repository.dart';
import 'package:kloti_app/services/auth_base.dart';

enum ViewState{Idle,Busy}
//Provider sayesinde istekleri repository e yollarız.
class UserModel with ChangeNotifier implements AuthBase{

 ViewState _state=ViewState.Idle;
final UserRepository _userRepository=locator<UserRepository>();
  UserM? _user;
 
  UserM? get user=>_user;
 ViewState get state => _state;
 set state(ViewState value)
 {
   _state=value;
   notifyListeners();
 }
  UserModel(){
    currentUser();
  }
  @override
  Future<UserM?> currentUser() async{
    try{
        state=ViewState.Busy;
       _user= await _userRepository.currentUser();
        return _user;

    }catch(e)
    {
      debugPrint('ViewModeldeki current userda hata :'+ e.toString());
      return null;
    }finally{
      state=ViewState.Idle;
    }
  }

  @override
  Future<UserM?> signInAnonymously() async{
    try{
        state=ViewState.Busy;
        _user= await _userRepository.signInAnonymously();
        return _user;


    }catch(e)
    {
      debugPrint('ViewModeldeki sign in anonimde  hata :'+ e.toString());
      return null;
    }finally{
      state=ViewState.Idle;
    }
  }

  @override
  Future<bool?> signOut() async{
    try{
        state=ViewState.Busy;
      bool? sonuc= await _userRepository.signOut();
      _user=null;
      return sonuc;

    }catch(e)
    {
      debugPrint('ViewModeldeki sign outta hata :'+ e.toString());
      return false;
    }finally{
      state=ViewState.Idle;
    }

}

  @override
  Future<UserM?> signInWithGoogle() async{
     try{
        state=ViewState.Busy;
        _user= await _userRepository.signInWithGoogle();
        return _user;


    }catch(e)
    {
      debugPrint('ViewModeldeki sign in anonimde  hata :'+ e.toString());
      return null;
    }finally{
      state=ViewState.Idle;
    }
  }
}