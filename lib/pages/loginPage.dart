import 'package:flutter/material.dart';

import '../components/my_botton.dart';
import '../components/my_imagelogo.dart';
import '../components/my_textfield.dart';

class LogInPage extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                  child: Icon(
                Icons.lock,
                size: 120,
              )),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Welcome Back you \'ve been missed',
                style: TextStyle(color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                hintText: 'Email',
                obscureText: false,
                controller: emailcontroller,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                hintText: 'password',
                obscureText: true,
                controller: passwordcontroller,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password!',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MyBotton(onTap: () {}),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Text(
                    'Or continue With',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  MyImageLogo(imagePath: 'lib/images/google.png'),
                  SizedBox(
                    width: 15,
                  ),
                  MyImageLogo(imagePath: 'lib/images/apple.png'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text('Not a member?',style: TextStyle(
                      color: Colors.grey.shade600, ),),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
