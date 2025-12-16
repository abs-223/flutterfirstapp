
import 'package:flutter/material.dart';
import 'package:fistapp/sayhello.dart';


//Pour rendre n'importe quel composant cliquable on peut le wrap en widget et remplacer le inkwell et ajouter une fonction ontap()
//final controller = controllerLogin,
//final controller = controllerPassword
//Obscuretext() pour rendre le texte invisible


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

//pour la validation des inputs la
//final _formKey = GlobalKey<FormState>();

final controllerLogin = TextEditingController();
final controllerPassword = TextEditingController();  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Login Page by ABS223')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
            child :Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      
                        //pour la validation
                     // autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controllerLogin,

                     // keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Login',
                        hintText: 'Entrer votre Login',
                      prefixIcon: Icon(Icons.account_circle),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        if (value==null || value.isEmpty){
                          return "le champ est obligatoire";
                        }
                        return null;
                      },
                    ),
                  ),
                  
                  SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: TextFormField(
                      
                      //pour la validation
                      // autovalidateMode: AutovalidateMode.onUserInteraction,

                    controller: controllerPassword,

                    
                     // keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
                        hintText: 'Entrer votre mot de passe',
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        if (value==null || value.isEmpty){
                          return "le champ est obligatoire";
                        }
                        return null;
                      },
                    ),
                  ),

                  //sizedbox pour mettre des espaces
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Sayhello(title: '',)),
                    );
                    },
                      color: Colors.teal,
                      textColor: Colors.white,
                      child: Text("Connecter"),
                      ),
                  )
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
