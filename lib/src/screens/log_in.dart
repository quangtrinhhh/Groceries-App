import 'package:flutter/material.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/screens/sign_up.dart';
import 'package:groceries_app/src/widget/button_reponsive.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                        'Loging',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Enter your emails and password',
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
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: const Text(
                      'Passwword',
                      style: TextStyle(fontSize: 15),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        isObscureText = !isObscureText;
                      },
                      icon: Icon(isObscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.black,
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
                      text: 'Login',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ));
                      },
                      child: const Text(
                        'Signup',
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
