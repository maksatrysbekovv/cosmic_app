import 'package:flutter/material.dart';
import 'package:flutter_1_app/ui/widgets/background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.2),
      // appBar: AppBar(
      //   title: const Text(
      //     'Solar Sytemdds',
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Colors.black.withOpacity(0.1),
      // ),
      body: Stack(
        children: [
          Background(),
          AppBar(
            title: const Text(
              'Solar Sytemds',

              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.black.withOpacity(0.1),
          ),
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
