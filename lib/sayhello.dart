import 'package:flutter/material.dart';

class Sayhello extends StatelessWidget {
  const Sayhello({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BONJOUR TOUT LE MONDE"),),
      body: Center(child: Text("Soyez les bienvenu  JESPERE QUE VOUS ALLEZ BIEN"),),
    );
  }
}