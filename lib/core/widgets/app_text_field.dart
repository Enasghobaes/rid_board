
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String label;
  final IconButton? suffixIcon;
  const AppTextField({
    super.key,
    required this.label,
    this.suffixIcon,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

TextEditingController name = TextEditingController();

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: name,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIconConstraints: const BoxConstraints(
          maxWidth: 25,
        ),
        label: Text(
          widget.label,
        ),
        suffixIcon: widget.suffixIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
