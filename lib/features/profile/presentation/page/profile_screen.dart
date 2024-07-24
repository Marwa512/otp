// ignore_for_file: dead_code

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/core/function/service_locator.dart';
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart';
import 'package:opt_page/features/profile/domain/entities/profile_entity.dart';
import 'package:opt_page/features/profile/presentation/manger/profile/profile_bloc.dart';
import 'package:opt_page/features/profile/presentation/widgets/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProfileEntity? profileSaved;
    return BlocProvider(
      create: (context) => ProfileBloc()..add(const GetProfileData()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
                body: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ConditionalBuilder(
                      condition: state is GetProfileDataSuccess,
                      builder: (context) {
                        return ProfileWidget(
                          datebirth: context
                                  .read<ProfileBloc>()
                                  .profileData
                                  ?.datebirth ??
                              profileSaved?.datebirth,
                          email:
                              context.read<ProfileBloc>().profileData?.email ??
                                  profileSaved?.email,
                          image:
                              context.read<ProfileBloc>().profileData?.image ??
                                  profileSaved?.image,
                          name: context.read<ProfileBloc>().profileData?.name ??
                              profileSaved?.name,
                          phone:
                              context.read<ProfileBloc>().profileData?.phone ??
                                  profileSaved?.phone,
                        );
                      },
                      fallback: (context) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )));
          }),
    );
  }
}
