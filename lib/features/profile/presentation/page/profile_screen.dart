import 'package:flutter/material.dart';
import 'package:opt_page/features/otp/data/models/verify_model.dart';
import 'package:opt_page/features/profile/presentation/widgets/sized_box.dart';
import 'package:opt_page/features/profile/presentation/widgets/text_form.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,  required this.profile,
  });
 final Profile profile;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           SizedBox(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(profile.image ?? ""),
            ),
          ),
          const SizedBoxWidget(),
          const SizedBoxWidget(),
          TextFormWidget(label: profile.name, iconData: Icons.person),
          const SizedBoxWidget(),
          TextFormWidget(label: profile.email, iconData: Icons.email),
          const SizedBoxWidget(),
          TextFormWidget(label: profile.phone, iconData: Icons.phone),
          const SizedBoxWidget(),
           TextFormWidget(label: profile.birthdate, iconData: Icons.date_range),
          const SizedBoxWidget(),
        ],
      ),
    ));
  }
}
