import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    // required this.onchanged,
  });
  final String hintText;
  // final Function(String) onchanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        // color: Color(0xffF4FCF9), //
      ),
      child: TextFormField(
        // onChanged: onchanged,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 16, color: Colors.black54),
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
