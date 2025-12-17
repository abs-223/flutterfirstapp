import 'package:flutter/material.dart';
import 'contact.dart';
// import 'login.dart';
import 'contact_card.dart';

class ContactListPage extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
      name: "Awa Diallo",
      phone: "78 12 45 87",
      imagepath: "assets/images/awa.png",
    ),
    Contact(
      name: "Moussa Keita",
      phone: "76 55 20 98",
      imagepath: "assets/images/moussa.png",
    ),
    Contact(
      name: "Fatou Traoré",
      phone: "72 44 99 12",
      imagepath: "assets/images/fatou.png",
    ),
    Contact(
      name: "Ne pas répondre",
      phone: "78 12 45 87",
      imagepath: "assets/images/dontanswer.png",
    ),
    Contact(
      name: "Gabriel BruleBois",
      phone: "76 55 20 98",
      imagepath: "assets/images/gabriel.png",
    ),
    Contact(
      name: "Johnny Cenat",
      phone: "72 44 99 12",
      imagepath: "assets/images/johnny.png",
    ),
    Contact(
      name: "Korotoumou Coulibaly",
      phone: "72 44 99 12",
      imagepath: "assets/images/koro.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bienvenu dans le repertoire"),),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ContactCard(contact: contacts[index]); 
        },
      ),
    );
  }
}
