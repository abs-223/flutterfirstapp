import 'package:fistapp/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loadingscreen extends StatefulWidget {
  const Loadingscreen({super.key});

  @override
  State<Loadingscreen> createState() => _LoadingscreenState();
}

class _LoadingscreenState extends State<Loadingscreen> {
  void initState() {
    super.initState();
  // faire un cherry preference pour les tel !!!!! important faire des recherches dessus
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
            MaterialPageRoute<void>(
            builder: (context) => Login(),
    ),
  );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.network('https://lottie.host/a38ca7a1-cfb2-470d-9cfd-845c5bfb90d4/hPGKc1trg4.json'),),
    );
  }
}