import 'package:flutter/material.dart';
import 'package:flutter_1_app/ui/widgets/background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Background(),
          Center(
            child: Text(
              'Welcome to the Home Page',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
