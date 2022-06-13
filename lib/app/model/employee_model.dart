class EmployeeM {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;

  String? phoneNumber;
  
 

  
  EmployeeM({this.uid,this.email,this.firstName,this.lastName,this.phoneNumber});
  factory EmployeeM.fromMap(map){
    return EmployeeM(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
   
      phoneNumber: map['phoneNumber'],
    

    );
  }
  Map<String,dynamic> toMap(){
    return{
      'uid':uid,
      'email':email,
      'firstName':firstName,
      'lastName': lastName,
     
      'phoneNumber':phoneNumber,
    
    };
  }

}