class UserM {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;
  String? address;
  String? phoneNumber;
  String? profilURL;

  
  UserM({this.uid,this.email,this.firstName,this.lastName,this.address,this.phoneNumber, this.profilURL});
  factory UserM.fromMap(map){
    return UserM(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      address: map['address'],
      phoneNumber: map['phoneNumber'],
      profilURL: map['profilURL'] ?? "https://isobarscience.com/default-profile-picture1/",

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
      'profilURL': profilURL,
    };
  }

}