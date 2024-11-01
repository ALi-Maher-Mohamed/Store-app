import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.buttonText, this.onTap});
  VoidCallback? onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 333,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xff00BF6C)),
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }
}
