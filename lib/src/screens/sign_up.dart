import 'package:flutter/material.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/widget/button_reponsive.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Center(
                  child: Image.asset('assets/images/Groupicon_1.png'),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Enter your credentials to continue',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextField(
                  decoration: InputDecoration(
                    label: Text(
                      'Username',
                      style: TextStyle(fontSize: 15),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey), // Đường viền dưới khi có focus
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  decoration: InputDecoration(
                    label: Text(
                      'Email',
                      style: TextStyle(fontSize: 15),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey), // Đường viền dưới khi có focus
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text(
                      'Passwword',
                      style: TextStyle(fontSize: 15),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey), // Đường viền dưới khi có focus
                    ),
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Wrap(
                  children: [
                    Text(
                      'By continuing you agree to our',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Terms of Service',
                      style: TextStyle(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'add',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Terms of Service',
                      style: TextStyle(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      elevation: 0, // Bỏ bóng
                      padding: const EdgeInsets.symmetric(
                          vertical: 0), // Padding cho nút
                    ),
                    child: ReposiveButton(
                      text: 'Sing Up',
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Singup',
                        style: TextStyle(
                          color: AppColors.greenColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
