import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/shared/presentation/app/app_bloc.dart';

class ChangeLanguageButton extends StatelessWidget {
  const ChangeLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(builder: (context, state) {
        return DropdownButton<Locale>(
          value: context.locale,
          items: context.supportedLocales.map((Locale locale) {
            return DropdownMenuItem<Locale>(
              value: locale,
              child: Text(locale.languageCode),
            );
          }).toList(),
          onChanged: (Locale? newLocale) {
            if (newLocale != null) {
              context.setLocale(newLocale);
              context.read<AppBloc>().add(AppEvent.changeLocale(newLocale));
                           // Update the EasyLocalization context
            }
          },
        );
      }),
    );
  }
}
