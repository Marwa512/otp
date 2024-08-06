import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textEditingController});
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          filled: true,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          fillColor: Colors.white,
          hintText: "عقارك المفضل بانتظارك! ابحث الان"),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20));
  }
}
