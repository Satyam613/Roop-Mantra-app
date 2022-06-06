import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meraapp/screens/Fancy.dart';
import 'package:meraapp/screens/Homepageroop.dart';
import 'package:meraapp/screens/finalHome.dart';
//import 'package:meraapp/screens/demo1.dart';
import 'package:meraapp/screens/registrationpage.dart';
import 'package:meraapp/screens/shooping_ui.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailControl = new TextEditingController();
  final TextEditingController passwordControl = new TextEditingController();
  //firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //email field
    final emailfield = TextFormField(
      autofocus: false,
      controller: emailControl,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please enter your email");
        }

        // reg expression for email
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
            .hasMatch(value)) {
          return ("Abee Valid email id dal");
        }
        return null;
      },
      onSaved: (value) {
        emailControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    //password field
    final passwordfield = TextFormField(
      autofocus: false,
      controller: passwordControl,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for logging");
        }
        if (!regex.hasMatch(value)) {
          return ("please enter a valid password minimum 6 character");
        }
      },
      onSaved: (value) {
        passwordControl.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    final loginbutton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 10, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signin(emailControl.text, passwordControl.text);
        },
        child: const Text('Login',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              icon: const Icon(Icons.arrow_back))),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                      'Roop\n'
                      '     Mantra',
                      style: GoogleFonts.dancingScript(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent)),
                  Image.asset(
                    'assets/images/pi7.gif',
                    height: 200.0,
                    width: 300.0,
                  ),
                  emailfield,
                  const SizedBox(
                    height: 20.0,
                  ),
                  passwordfield,
                  const SizedBox(
                    height: 20.0,
                  ),
                  loginbutton,
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Dont have an account?',
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Registor())),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

//login function
  void signin(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successfully"),
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => Baar()),
                  ),
                ),
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
