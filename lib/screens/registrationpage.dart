import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meraapp/model/user_model.dart';
import 'package:meraapp/screens/Fancy.dart';
import 'package:meraapp/screens/Homepageroop.dart';
import 'package:meraapp/screens/SaraswatiMaa.dart';
import 'package:meraapp/screens/finalHome.dart';
import 'package:meraapp/screens/shooping_ui.dart';

class Registor extends StatefulWidget {
  const Registor({Key? key}) : super(key: key);

  @override
  State<Registor> createState() => _RegistorState();
}

class _RegistorState extends State<Registor> {
  final _auth = FirebaseAuth.instance;
  //our form key
  final _formKey = GlobalKey<FormState>();
  //editing controller
  final firstControl = new TextEditingController();
  final secondControl = new TextEditingController();
  final emailControl = new TextEditingController();
  final passwdControl = new TextEditingController();
  final confirmpassControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //first Name
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstControl,
      keyboardType: TextInputType.text,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("first Name cannot be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Sahi se naam likh");
        }
        return null;
      },
      onSaved: (value) {
        firstControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
      ),
    );
    //second Name
    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondControl,
      keyboardType: TextInputType.text,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("second Name cannot be empty");
        }
        return null;
      },
      onSaved: (value) {
        secondControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Second Name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
      ),
    );
    //email
    final emailField = TextFormField(
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
      ),
    );

    //password
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwdControl,
      obscureText: true,
      // keyboardType: TextInputType.text,
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
        passwdControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
      ),
    );

    final confirmField = TextFormField(
      autofocus: false,
      controller: confirmpassControl,
      obscureText: true,
      validator: (value) {
        if (confirmpassControl.text != passwdControl.text) {
          return "Password Not Match!";
        }
        return null;
      },
      onSaved: (value) {
        confirmpassControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
      ),
    );

    //sign up button
    final signUpbutton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 10, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signup(emailControl.text, passwdControl.text);
        },
        child: const Text('Sign-up',
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
            icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formKey,
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
                  firstNameField,
                  const SizedBox(
                    height: 20.0,
                  ),
                  secondNameField,
                  const SizedBox(
                    height: 20.0,
                  ),
                  emailField,
                  const SizedBox(
                    height: 20.0,
                  ),
                  passwordField,
                  const SizedBox(
                    height: 20.0,
                  ),
                  confirmField,
                  const SizedBox(
                    height: 20.0,
                  ),
                  signUpbutton,
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  void signup(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailstoFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailstoFirestore() async {
    //calling our firestore
    //calling our model
    //sending these value
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    Usermodel usermodel = Usermodel();
    //writing all the value'
    usermodel.email = user!.email;
    usermodel.uid = user.uid;
    usermodel.firstName = firstControl.text;
    usermodel.secondName = secondControl.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(usermodel.toMap());
    Fluttertoast.showToast(msg: "account Created successfully!");
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Baar()), (route) => false);
  }
}
