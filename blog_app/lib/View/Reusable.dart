import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

Widget title = Text(
  "Welcome",
  style: const TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w800,
    color: Color.fromRGBO(11, 20, 143, 1),
  ),
  textAlign: TextAlign.center,
);

Text signInSubtitle = Text("Sign Up to your account",
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 6, 2, 68),
    ));

Text loginSubtitle = Text("Log In to your account",
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 6, 2, 68),
    ));

Text signUpButton = const Text("Sign Up",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ));

Text loginButton = const Text("Log In",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ));

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  minimumSize: const Size(0, 50.0),
  backgroundColor: const Color.fromRGBO(11, 20, 143, 1),
);

Text otherWiseForSignup = Text("or already have an account",
    style: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ));

Text otherWiseForLogin = Text("or don't have an account",
    style: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ));

Text loginOptionTextButton = const Text("Log In",
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.blue,
    ));

Text signUpOptionTextButton = const Text("Sign up",
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.blue,
    ));

Widget blog(String title, String body) {
  return Padding(
      padding: const EdgeInsets.all(7),
      child: Card(
        color: const Color.fromARGB(255, 215, 215, 215),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          title: Text(title),
          subtitle: ReadMoreText(
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: "Read less",
            trimCollapsedText: "Read more",
            colorClickableText: const Color.fromRGBO(11, 20, 143, 1),
            body,
            style: const TextStyle(color: Color.fromARGB(255, 27, 26, 26)),
          ),
        ),
      ));
}

String labelUsername = "Username";
String labelEmail = "Email";
String labelPassword = "Password";
Widget textField(
    String label, bool isPassword, TextEditingController textFieldController) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(45, 0, 45, 5),
      child: SizedBox(
        height: 63,
        child: TextFormField(
          controller: textFieldController,
          obscureText: isPassword,
          decoration: InputDecoration(
            floatingLabelBehavior: null,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1, color: Colors.grey),
            ),
            focusColor: Colors.grey,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1, color: Colors.grey),
            ),
            hintText: label,
          ),
        ),
      ));
}
