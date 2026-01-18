import 'package:fistapp/correction_contact.dart';
import 'package:fistapp/correction_contact_detail.dart';
import 'package:flutter/material.dart';

class CorrectionContactlist extends StatefulWidget {
  const CorrectionContactlist({super.key});

  @override
  State<CorrectionContactlist> createState() => _CorrectionContactlistState();
}

class _CorrectionContactlistState extends State<CorrectionContactlist> {

final name = TextEditingController();
final lastname = TextEditingController();
final number = TextEditingController();
final pic = TextEditingController();


  List<CorrectionContact> correctionContacts = [
    // CorrectionContact correctionContact = CorrectionContact ("Amadou Sidibe","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    CorrectionContact(
      "Amadou Sidibe",
      "38784787",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s",
    ),
    CorrectionContact(
      "Ousmane Sambou",
      "38784787",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s",
    ),
    CorrectionContact(
      "Abdoul Koumaré",
      "38784787",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s",
    ),
    // CorrectionContact ("Allassane Bouaré","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    // CorrectionContact ("Tchédré Moubarack","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    // CorrectionContact ("Oumar Doumbia","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    // CorrectionContact ("Moulaye Labass","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    // CorrectionContact ("Harouna Traoré","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    // CorrectionContact ("Adiba Noor","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    // CorrectionContact ("Amadou Togola","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    // CorrectionContact ("Bakary Coulibaly","38784787","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
    //
  ];
var variable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste de contact"),
        actions: [
          InkWell(
            onTap: () {
              variable =false;
              print("affichage formulaire $variable");
            setState(() {
              
            });
              
            },
          child: Icon(Icons.add,
          )
          )
          ],
      ),

      body : variable? showlistcontact() : Column(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
              label: Text("Nom"),
              hintText: "Entrez votre nom"
            ),
          ),
          SizedBox(height: 10),
          
          TextField(
            controller: number,
            decoration: InputDecoration(
              label: Text("Numéro"),
              hintText: "Entrez votre numéro"
            ),
          ),
        SizedBox(height: 10),TextField(
            controller: pic,
            decoration: InputDecoration(
              label: Text("Image"),
              hintText: "Entrez le lien vers votre image"
            ),
          ),
        SizedBox(height: 10),

        ElevatedButton(onPressed:(){
        print("Enregistrement en cours");

        if(name.text.isEmpty || number.text.isEmpty ||pic.text.isEmpty ){
        

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Veuillez renseignez tous les champs')));


        }else{
          CorrectionContact c = CorrectionContact(name.text, number.text, pic.text);
          correctionContacts.add(c);
          variable = true;
          ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Enregistrer')));
          setState(() {
            
          });
        }

        }, child: Text("Sauvegarder"))

      ],)

    );
    
  }

      // On a un problème avec le list tile car on a une liste et on ne peut pas l'afficher avec ça
      
      
      
      Widget showlistcontact(){
        return ListView.builder(
        itemCount: correctionContacts.length,
        itemBuilder: (context, index) {
          return InkWell(
            onDoubleTap: (){
              correctionContacts.remove(correctionContacts[index]);
              setState(() {
                
              });
            },
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  // builder: (context) => MyHomePage(title: controllerLogin.text),
                  builder: (context) => CorrectionContactDetail(
                    contact: correctionContacts[index],
                  ),
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
        },
      );
        }
}

