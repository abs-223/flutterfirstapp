import 'package:fistapp/correction_contactlist.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Welcome to my login page"),
          SizedBox(height: 30),

      
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: controllerLogin,
            decoration: InputDecoration(
              label: Text("Login"),
              prefixIcon: Icon(Icons.account_circle),
              hintText: "Saisir votre login",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            obscureText: true,
            controller: controllerPassword,
            decoration: InputDecoration(
              label: Text("Mot de passe "),
              prefixIcon: Icon(Icons.password),
              hintText: "Saisir le mot de passe",
              border: OutlineInputBorder(),
            ),
          ),
        ),

        SizedBox(height: 30),

        OutlinedButton(onPressed: () {
          if ((controllerLogin.text == "3ii" && controllerPassword.text == "P@sser3ii.2025")
          || (controllerLogin.text == "admin" && controllerPassword.text == "Gestion@123.2025") 
          || (controllerLogin.text == "gerant" && controllerPassword.text == "gerant.3ii@2025")
          ){
            Navigator.of(context).pushReplacement(
            MaterialPageRoute<void>(
            // builder: (context) => MyHomePage(title: controllerLogin.text),
            builder: (context) => CorrectionContactlist(),
    ),
  );
          }else{

          ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('incorrect username or password')));
          }

}, child: Text("Connexion"))

        ],
      ),
    );
  }
}