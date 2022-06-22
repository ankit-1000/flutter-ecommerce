import 'package:flutter/material.dart';
import "package:firebase_core/firebase_core.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'UI/Splash_Screen.dart';
import 'Firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: splashscreen(),
        );
      },
    );
  }
}
