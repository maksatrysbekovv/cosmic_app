import 'package:flutter/material.dart';
import 'package:flutter_1_app/ui/widgets/background.dart';
import 'package:flutter_1_app/ui/widgets/email.dart';
import 'package:flutter_1_app/ui/widgets/email_pass.dart';
import 'package:flutter_1_app/core/constants/colors.dart';
import 'package:flutter_1_app/ui/screens/home/home_page.dart';

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
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(25),
                ),
                // color: Colors.black.withOpacity(0.6),
                height: 450,
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
                        'Forgot passwordsss?',
                        style: TextStyle(color: Colors.lightBlueAccent),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Colors.lightBlueAccent,
                            // Colors.blueAccent,
                            Colors.purple,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
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
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'or sign in using',
                      style: TextStyle(color: AppColors.greyColor),
                    ),
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, // делает контейнер круглым
                            color: const Color.fromARGB(
                              255,
                              27,
                              29,
                              43,
                            ).withOpacity(0.5), // цвет фона (прозрачный темный)
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/twitter.png', // путь к твоей иконке
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, // делает контейнер круглым
                            color: const Color.fromARGB(
                              255,
                              27,
                              29,
                              43,
                            ).withOpacity(0.5), // цвет фона (прозрачный темный)
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/facebook.png', // путь к твоей иконке
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, // делает контейнер круглым
                            color: const Color.fromARGB(
                              255,
                              27,
                              29,
                              43,
                            ).withOpacity(0.5), // цвет фона (прозрачный темный)
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/google.png', // путь к твоей иконке
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        // Icon(Icons.account_circle_rounded, color: Colors.white),
                        // Icon(Icons.account_circle_rounded, color: Colors.white),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: AppColors.greyColor),
                        ),
                        TextButton(
                          onPressed: () {
                            print('Нажали на Sign up');
                            // Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpPage()));
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
