import 'package:fistapp/correction_contact.dart';
import 'package:flutter/material.dart';

class CorrectionContactDetail extends StatelessWidget {
  CorrectionContactDetail({super.key, required this.contact});

  final CorrectionContact contact; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(contact.nom)),
    );
  }
}