import 'package:blog_app/View/LoginPage.dart';
import 'package:blog_app/View/Reusable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'HomePage.dart';
import 'textController.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 20, 143, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Container(
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(11, 20, 143, 1),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 120.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign up ",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                )),
            Container(
            height: 600,
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
                    child: Column(children: [
                      textField(
                          labelUsername, false, signupUsernameTextFieldController),
                      textField(labelEmail, false, signupEmailTextFieldController),
                      textField(
                          labelPassword, true, signupPasswordTextFieldController),
                      Container(
                        
                        foregroundDecoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(50)),
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(45, 20, 45, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (isValidPassword(
                                    signupPasswordTextFieldController.text) &&
                                isValidEmail(signupEmailTextFieldController.text) &&
                                isValidUsername(
                                    signupUsernameTextFieldController.text)) {
                              Get.to(() => const HomePage());
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Warning'),
                                    content:
                                        const Text('Check the text fields again'),
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
                          child: signUpButton,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          otherWiseForLogin,
                          TextButton(
                              onPressed: () {
                                Get.to(() =>  LoginPage());
                              },
                              child: loginOptionTextButton)
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
