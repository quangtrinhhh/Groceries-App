import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroud_login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
