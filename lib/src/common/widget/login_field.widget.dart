import 'package:flutter/material.dart';

class LoginFieldWidget extends StatelessWidget {
  const LoginFieldWidget({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
