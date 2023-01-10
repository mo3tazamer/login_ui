import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {

  Function()? onTap;

   MyBotton( {super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black),
        child: const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
