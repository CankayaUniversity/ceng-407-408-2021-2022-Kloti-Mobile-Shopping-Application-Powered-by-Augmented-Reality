class UserM {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;
  String? address;
  String? phoneNumber;
  
 

  
  UserM({this.uid,this.email,this.firstName,this.lastName,this.address,this.phoneNumber});
  factory UserM.fromMap(map){
    return UserM(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      address: map['address'],
      phoneNumber: map['phoneNumber'],
    

    );
  }
  Map<String,dynamic> toMap(){
    return{
      'uid':uid,
      'email':email,
      'firstName':firstName,
      'lastName': lastName,
      'address':address,
      'phoneNumber':phoneNumber,
    
    };
  }

}