
import 'package:flutter/material.dart';
class SignUp extends StatelessWidget{
  Widget build(BuildContext context){
    return SafeArea(child:Scaffold(
    body:Container(
      margin:EdgeInsets.all(24),
      child:Column(children: [
        _header(context),
        _inputFields(context),

      ],)
      ),

    
    ));

  }
   _header(context){
     return Column(
     children:const [
    Text("Create Account",style:TextStyle(fontSize:40,fontWeight:FontWeight.bold )),
     ],
     );
   }
  
}
_inputFields(context){
 final _formKey = GlobalKey<FormState>();
  return Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Form(
         key: _formKey,
        child: TextFormField(
          decoration:InputDecoration(
            hintText: "First Name",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
             prefixIcon: Icon(Icons.person_add_alt_sharp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            borderSide:BorderSide.none)),
          ),
      ),
        const SizedBox(
         height:10,
        ),
    TextFormField(
        decoration:InputDecoration(
          hintText: "Last Name",
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          borderSide:BorderSide.none)),
        ),
        const  SizedBox(
         height:10,
        ),
        TextFormField(
        decoration:InputDecoration(
          hintText: "E-mail",
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.email_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          borderSide:BorderSide.none)),
        ),
         const SizedBox(
         height:10,
        ),
        TextFormField(
        decoration:InputDecoration(
          hintText: "Phone Number",
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.phone_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          borderSide:BorderSide.none)),
        ),
        TextFormField(
        decoration:InputDecoration(
          hintText: "Address",
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.home_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          borderSide:BorderSide.none)),
        ),
        const  SizedBox(
         height:10,
        ),
        TextFormField(
        decoration:InputDecoration(
          hintText: "Password",
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.password_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide:BorderSide.none),
          ),
            obscureText: true,
            
  
        ),
         const SizedBox(
         height:10,
        ),
        ElevatedButton(onPressed:() {},
         child: const Text(
           "Sign Up",
            style:TextStyle( fontSize: 20),
            
            
  
           ),
           style:ElevatedButton.styleFrom(
             shape:const StadiumBorder(),
             padding:const EdgeInsets.symmetric(vertical:16),
  
           ),
           )
  
  
    ],
    ),
  );
 
}
