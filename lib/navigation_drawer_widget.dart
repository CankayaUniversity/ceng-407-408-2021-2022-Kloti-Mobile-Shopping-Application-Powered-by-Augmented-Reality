// // ignore_for_file: no_logic_in_create_state

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:kloti_app/my_login.dart';
// import 'package:kloti_app/providers/user_provider.dart';
// import 'package:kloti_app/service/auth.dart';
// import 'package:kloti_app/signuppage.dart';


// class NavigationDrawerWidgett extends StatefulWidget {
// UserProvider? userProvider;
// NavigationDrawerWidgett({Key? key, this.userProvider}) : super(key: key);
//    @override
//   State<NavigationDrawerWidgett> createState() => _NavigationDrawerWidgettState();
// }
// class _NavigationDrawerWidgettState extends State<NavigationDrawerWidgett> {
  

//  final AuthService _authService= AuthService();
//  String? uid,email,name;

//   @override
//   void initState() {
//     super.initState();
//     _authService.getCurrentUser().then((user) {
//       setState(() {
//         uid = user!.uid;
//         email = user.email;    
//       });
//     });
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     var userData=widget.userProvider!.currentUserData;
//     return Drawer(
//       child: Material(
//         color:Colors.blue.shade900,
//         child: ListView(
//           children:  <Widget> [
//            /*  DrawerHeader(child: Row(
//               children:   [
//                  CircleAvatar(
//                   radius: 43,
//                   backgroundColor: Colors.white,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.blue,
//                     backgroundImage: NetworkImage(
//                       userData.image ?? 'https://www.ilgincgercek.com/wp-content/uploads/2018/05/ilginc-araba.jpg'),

//                   radius: 40,
//                   ),
//                 ),
//                const  SizedBox(
//                   width: 20,
//                 ),
//                Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           children: [
//                               Text(userData.firstName),
//                          Text(userData.lastName),
//                           ],
//                         ),  
//                         Text(
//                           userData.email,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ],
//                     ),
//               ],
//             ),
//             ), */
//            /*  UserAccountsDrawerHeader(
//               decoration:  BoxDecoration(
//                 gradient: LinearGradient(
//                   colors:[Colors.blue.shade900,Colors.blue.shade400],
//                   begin:Alignment.centerLeft,end:Alignment.centerRight,
//                 ),
//                 color: Colors.blue.shade900,
//               ),
//               accountName: Text(uid.toString()),
//                accountEmail: Text(email.toString()),
//                ), */
           
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                      const SizedBox(height: 40),
//                   ListTile(
//                     hoverColor: Colors.blue,
//                     title:  const Text('Kayıt ol',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                     ),
//                     leading: const Icon(Icons.note_add_rounded,color: Colors.white),
//                     onTap: (){
//                       Navigator.pop(context);
//                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  SignUp()),);
//                     },
//                   ),
//                   const SizedBox(height: 16),
//              ListTile(
//                hoverColor: Colors.blue,
//               title:  const Text('Giriş yap',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                  fontSize: 16,
//               ),
//               ),
//               leading:  const Icon(Icons.person,color:Colors.white),
//               onTap: (){
//                  Navigator.pop(context);
//                Navigator.push(context, MaterialPageRoute(builder: (context) => const  MyLogin()),);
//               },
              
//             ),
//                ListTile(
//                     hoverColor: Colors.blue,
//                     title:  const Text('Çıkış Yap',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                     ),
//                     leading: const Icon(Icons.note_add_rounded,color: Colors.white),
//                     onTap: (){
//                       Navigator.pop(context);
//                     FirebaseAuth.instance.signOut();
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) =>const MyLogin()),
//                     );
//                     },
//                   ),
//                   const SizedBox(height: 16),
//                 ],
//               ),
//             ),
            
//              const SizedBox(height: 20),
//             const  Divider(color: Colors.white,thickness: 1),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );


//   }
//   }


