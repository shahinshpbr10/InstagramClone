import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Responsive/mobile_layout.dart';
import 'package:instagram_clone/Responsive/responsive_layout.dart';
import 'package:instagram_clone/Responsive/web_layout.dart';
import 'package:instagram_clone/screen/login_screen.dart';
import 'package:instagram_clone/screen/signup_screen.dart';
import 'package:instagram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAAkqwOWRAqkREQzYnTJrLzcpI-D06iUC8",
          appId: "instagramclone-66d7a.firebaseapp.com",
          messagingSenderId: "527043410946",
          projectId: "instagramclone-66d7a",
          storageBucket: "instagramclone-66d7a.appspot.com"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: const ResponsiveLayout(
      //     webScreenLayout: WebLayout(), mobileScreenLayout: MobileLayout(),),
      home: const SignUpScreen(),
    );
  }
}
