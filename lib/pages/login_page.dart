import 'package:flutter/material.dart';
import 'package:food_app/pages/home_page.dart';
import '../components/my_button.dart';

import '../components/my_textfield.dart';
class LoginPage extends StatefulWidget {

  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  void login() {
    //nagivate to home
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            // Message, app slogan
            Text(
              "Food K App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            //email textfield
            MyTextField(
              controller: emailController,
              hintText: "Email hoặc số điện thoại",
              obscureText: false,
            ),
            const SizedBox(height: 25),

            //password text field
            MyTextField(
              controller: passwordController,
              hintText: "password",
              obscureText: true,
            ),
            const SizedBox(height: 10),
            MyButton(
              text: "Đăng nhập",
              onTap: login,
            ),

            const SizedBox(height: 25),
            //ban chua co tai khoan
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bạn chưa có tài khoản?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),

                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Đăng ký ngay",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );

  }
}
