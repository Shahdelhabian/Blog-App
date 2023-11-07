import 'package:blog_app/View/HomePage.dart';
import 'package:blog_app/View/Reusable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SignUP.dart';
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
      backgroundColor: Color.fromRGBO(11, 20, 143, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
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
                height: 600,
                margin: const EdgeInsets.only(top: 50),
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
                        textField(labelEmail, false, loginEmailTextFieldController),
                        textField(
                            labelPassword, true, loginPasswordTextFieldController),
                        Container(
                          foregroundDecoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(50)),
                          width: double.infinity,
                          margin: const EdgeInsets.fromLTRB(45, 20, 45, 0),
                          child: ElevatedButton(
                            onPressed: () {
                               Get.to(() => HomePage());
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
            ]),
          ),
        ),
      ),
    );
  }
}
