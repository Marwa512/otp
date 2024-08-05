import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {super.key, required this.label, required this.iconData});

  final String? label;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        label: Text(label ?? ""),
        suffixIcon: Icon(iconData),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
