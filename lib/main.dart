import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasks/modules/login_screen/login_screen.dart';
import 'package:tasks/modules/registeration_screen/registration_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          systemOverlayStyle:SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            systemNavigationBarIconBrightness:Brightness.dark,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: LoginScreen(),
    );
  }
}


