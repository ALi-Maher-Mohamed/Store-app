import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textField.dart';

class UpdateProductpage extends StatelessWidget {
  const UpdateProductpage({super.key});
  static String id = 'update product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Update Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                hintText: 'Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                hintText: 'Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                hintText: 'Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(buttonText: 'submit')
            ],
          ),
        ),
      ),
    );
  }
}
