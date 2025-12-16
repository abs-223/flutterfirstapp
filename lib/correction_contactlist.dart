import 'package:fistapp/correction_contact.dart';
import 'package:fistapp/correction_contact_detail.dart';
import 'package:flutter/material.dart';

class CorrectionContactlist extends StatefulWidget {
  const CorrectionContactlist({super.key});

  @override
  State<CorrectionContactlist> createState() => _CorrectionContactlistState();
}

class _CorrectionContactlistState extends State<CorrectionContactlist> {
  List <CorrectionContact> correctionContacts = [ 
  // CorrectionContact correctionContact = CorrectionContact ("Amadou Sidibe","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Amadou Sidibe","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Ousmane Sambou","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Abdoul Koumaré","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Allassane Bouaré","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Tchédré Moubarack","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Oumar Doumbia","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Moulaye Labass","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Harouna Traoré","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Adiba Noor","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Amadou Togola","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  CorrectionContact ("Bakary Coulibaly","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste de contact")),
    

    // On a un problème avec le list tile car on a une liste et on ne peut pas l'afficher avec ça 
    body: ListView.builder(
      itemCount: correctionContacts.length,
      itemBuilder: (context,index){

      return
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
            // builder: (context) => MyHomePage(title: controllerLogin.text),
            builder: (context) => 
            CorrectionContactDetail( contact : correctionContacts[index]),
    ),
  );
        },
        child: Card(
        
          //pour ajouter de l'ombre
          elevation: 5,
          child: ListTile(
          leading: Image.network(correctionContacts[index].urlUrl),
          title: Text(correctionContacts[index].nom),
          subtitle: Text(correctionContacts[index].phoneNumber),
              ),
        ),
      );
    })


    );

  }
}