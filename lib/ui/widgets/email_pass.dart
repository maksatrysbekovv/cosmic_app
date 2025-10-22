import 'package:flutter/material.dart';
import 'package:flutter_1_app/core/constants/colors.dart';

class EmailPass extends StatefulWidget {
  const EmailPass({Key? key}) : super(key: key);

  @override
  _EmailPassState createState() => _EmailPassState();
}

class _EmailPassState extends State<EmailPass> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Passwords',
        hintStyle: TextStyle(color: AppColors.greyColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: AppColors.textColor, width: 2),
        ),
      ),
      style: TextStyle(color: AppColors.textColor),
    );
  }
}
