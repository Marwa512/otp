import 'package:flutter/material.dart';

import 'sized_box.dart';
import 'text_form.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget(
      {super.key,
      this.image,
      this.name,
      this.email,
      this.phone,
      this.datebirth});
  final String? image;
  final String? name;
  final String? email;
  final String? phone;
  final String? datebirth;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundImage: NetworkImage(image as String),
          ),
        ),
        const SizedBoxWidget(),
        const SizedBoxWidget(),
        TextFormWidget(label: name, iconData: Icons.person),
        const SizedBoxWidget(),
        TextFormWidget(label: email, iconData: Icons.email),
        const SizedBoxWidget(),
        TextFormWidget(label: phone, iconData: Icons.phone),
        const SizedBoxWidget(),
        TextFormWidget(label: datebirth, iconData: Icons.date_range),
        const SizedBoxWidget(),
      ],
    );
  }
}
