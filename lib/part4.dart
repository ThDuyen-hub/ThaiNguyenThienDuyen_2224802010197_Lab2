import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Application')),
      body: SingleChildScrollView( // tránh overflow
        child: Column (
          children: <Widget>[
            Image.asset('images/3d_avatar_21.png', width: 100, height: 100),

            CustomTextField(
              label: 'First Name',
              controller: firstNameController,
            ), // CustomTextField
            CustomTextField(
              label: 'Last Name',
              controller: lastNameController,
            ), // CustomTextField

            const CustomTextField(
              label: 'Email',
              suffixText: '@mlritm.ac.in',
            ),
            const CustomTextField(
              prefixText: '+91',
              label: 'Phone Number', 
              keyboardType: TextInputType.phone, 
              maxLength: 10, 
            ), // CustomTextField

            const Divider(indent: 8, endIndent: 8),

            const CustomTextField(label: 'Username'),
            const CustomTextField(label: 'Password', obscureText: true),
            const CustomTextField(label: 'Confirm Password', obscureText: true),
            
            ElevatedButton(
              onPressed: () {
                String fullName =
                    "${firstNameController.text} ${lastNameController.text}";

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Registration Successful"),
                    content: Text("Welcome, $fullName"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("OK"),
                      ), // TextButton
                    ],
                  ), // AlertDialog
                );
              },
              child: const Text('Register'),
            ), // ElevatedButton
          ], // <Widget>[]
        ), // Column
      ), // SingleChildScrollView
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String? prefixText;
  final String? suffixText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.label,
    this.prefixText,
    this.suffixText,
    this.obscureText = false,
    this.keyboardType,
    this.maxLength,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        maxLength: maxLength,
        decoration: InputDecoration(
          labelText: label,
          prefixText: prefixText,
          suffixText: suffixText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
