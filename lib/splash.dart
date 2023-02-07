// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import 'main.dart';
import './main.dart' show MyHomePage;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const MyHomePage(
                  title: 'Home Page',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black87,
                child: Container(
                    height: 100,
                    width: 120,
                    color: Colors.blueGrey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('GROUP MEMBERS',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text('Adama Boubacar Oumarou',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                          Text('Cédric Murairi',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                          Text('Serge Tassiga',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ])))));
  }
}
