// import 'package:flutter/material.dart';

// class ValidateScreen extends StatelessWidget {
//   const ValidateScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: ((context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         }
//         if (snapshot.data != null) {
//           return HomePage();
//         } else {
//           return OnBoardingScreen();
//         }
//       }),
//     );
//   }
// }
