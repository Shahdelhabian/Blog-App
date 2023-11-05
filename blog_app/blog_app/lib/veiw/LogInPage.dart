import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:blog_app/veiw/HomePage.dart';
import 'SignUP.dart';
import 'reusable.dart';
import 'textController.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(11, 20, 143, 1),
              child: Padding(
                padding: EdgeInsets.only(left: 30.0, top: 120.0),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(
                      "Log in ",
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                     Text(
                      "Welcome back",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              )),
          Container(
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0))),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      textField(
                          labelEmail, false, loginEmailTextFieldController),
                      textField(
                          labelPassword, true, loginPasswordTextFieldController),
                              Container(
            foregroundDecoration:
                BoxDecoration(borderRadius: BorderRadius.circular(50)),
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(65, 20, 65, 10),
            child: ElevatedButton(
              onPressed: () {
                 if (isValidPassword(signupPasswordTextFieldController.text) &&
                  isValidEmail(signupEmailTextFieldController.text)) {
                Get.to(() => const HomePage());
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Warning'),
                      content: const Text('Check the text fields again'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              }
              },
              style: buttonStyle,
              child: loginButton,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              otherWiseForLogin,
              TextButton(
                  onPressed: () {
                    Get.to(() => const SignupPage());
                  },
                  child: signUpOptionTextButton)
            ],
          )
        ]),
      ),
                    ],
                  ),
                )
        ]   
      ),
    );
  }
}
