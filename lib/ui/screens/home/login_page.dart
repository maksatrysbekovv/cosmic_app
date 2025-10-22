import 'package:flutter/material.dart';
import 'package:flutter_1_app/ui/widgets/background.dart';
import 'package:flutter_1_app/ui/widgets/email.dart';
import 'package:flutter_1_app/ui/widgets/email_pass.dart';
import 'package:flutter_1_app/core/constants/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: const Text('Login', style: TextStyle(color: Colors.amber)),
      //   centerTitle: true,
      //   backgroundColor: Colors.black,
      // ),
      body: Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 150,
                width: 250,
                child: Image.asset('assets/images/cosmic.png'),
              ),
              Container(
                color: Colors.black.withOpacity(0.5),
                height: 420,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Email(),
                    SizedBox(height: 20),
                    EmailPass(),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.lightBlueAccent),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.blue, Colors.pink],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          print('Нажали кнопку!');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.transparent, // делаем фон прозрачным
                          shadowColor: Colors.transparent, // убираем тень
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 120,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'or sign in using',
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.account_circle_rounded, color: Colors.white),
                        Icon(Icons.account_circle_rounded, color: Colors.white),
                        Icon(Icons.account_circle_rounded, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
