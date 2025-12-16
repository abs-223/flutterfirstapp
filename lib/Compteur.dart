import 'package:flutter/material.dart';

class Compteur extends StatefulWidget {
  @override
  _CompteurState createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int _compteur = 0;

  void _incrementer() {
    setState(() {
      _compteur++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Compteur : $_compteur'),
        ElevatedButton(onPressed: _incrementer, child: Text('Incrémenter')),
      ],
    );
  }
}
