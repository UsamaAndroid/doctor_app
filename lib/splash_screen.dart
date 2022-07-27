import 'package:doc_app/language_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
      super.initState();
next();
  }
  next() async {
    await Future.delayed(const Duration(seconds: 1), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LangugaScreen();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset('assets/images/logo1.png').image)),
    ));
  }
}
