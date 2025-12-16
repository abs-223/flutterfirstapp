import 'package:flutter/material.dart';
import 'contact.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;
  
  const ContactCard({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(contact.imagepath),
          radius: 25,
        ),
        title: Text(
          contact.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(contact.phone),
        
      ),
    );
    
  }
}