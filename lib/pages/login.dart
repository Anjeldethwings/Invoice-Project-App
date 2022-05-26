import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../static/static_values.dart';
import 'components/styles/text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return login();
  }
}

class login extends State<LoginPage> {
  //controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future singIn() async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StaticValues.loginBackgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 10,
              ),

              Container(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'icons/invoice.PNG',
                    height: 20,
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              //hello
              const Text(
                'Hello Again!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: StaticValues.buttonColor),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                'Welcome back, We have miss you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  decoration: BoxDecoration(
                      color: StaticValues.textBoxColor,
                      border: Border.all(color: StaticValues.textBoxBoderColor),
                      borderRadius:
                          BorderRadius.circular(StaticValues.textBoxRadius)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    // child: TextFiledStyle(hint: 'user email address'),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'user email address'),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  decoration: BoxDecoration(
                      color: StaticValues.textBoxColor,
                      border: Border.all(color: StaticValues.textBoxBoderColor),
                      borderRadius:
                          BorderRadius.circular(StaticValues.textBoxRadius)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'password'),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //singin button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: singIn,
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 80,
                      right: 80,
                      top: 15,
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      color: StaticValues.buttonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: StaticValues.buttonTextColor),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Not a memeber? '),
                  Text(
                    'Sing Up',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
              //register
            ]),
          ),
        ),
      ),
    );
  }
}
