import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/shared/presentation/app/app_bloc.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: (context, state) {
      return IconButton(
        onPressed: () {
          context.read<AppBloc>().add(const AppEvent.changeThemeData());
        },
        icon: context.read<AppBloc>().isDark
            ? const Icon(Icons.light_mode)
            : const Icon(Icons.dark_mode),
      );
    });
  }
}
