import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'home_page.dart';
import 'contact_list_page.dart';
import 'contact_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => MyHomePage(),
        '/contact-list': (context) => ContactListPage(),
        '/contact-detail': (context) => ContactDetailPage(name: '', age: '', address: '', email: '', imagePath: '', about: '',),
      },
    );
  }
}
