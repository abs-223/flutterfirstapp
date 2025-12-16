import 'package:flutter/material.dart';

class Repertoire extends StatelessWidget {
  const Repertoire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
     ListTile(
      leading: Icon(Icons.person),
      title: Text("Abba"),
      subtitle: Text("Techi"),
    ),
    );
  }
}