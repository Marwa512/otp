import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opt_page/core/injection/setup_service_locator.dart';
import 'package:opt_page/core/utils/app_route.dart';
import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_states.dart';
import 'package:opt_page/features/otp/presentation/pages/widgets/change_lang_button.dart';
import 'package:opt_page/features/otp/presentation/pages/widgets/change_theme_button.dart';
import 'package:opt_page/features/otp/presentation/pages/widgets/pin_put.dart';
import 'package:opt_page/shared/presentation/widgets/button_widget.dart';
import 'package:opt_page/shared/presentation/widgets/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'widgets/timer.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OtpRepoImp otpRepoImp = getIt<OtpRepoImp>();

    return BlocProvider(
      create: (context) => OtpCubit(otpRepoImp),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: const [
            ChangeThemeButton(),
            ChangeLanguageButton(),
          ],
        ),
        body: Column(
          children: [
            Image.asset("assets/img/logo.png"),
            TextWidget(
              title: "verficationCode".tr(),
              color: const Color(0xFFb92525),
              fontWeight: FontWeight.bold,
            ),
            TextWidget(
              title: "enterVerficationCode".tr(),
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            const BuildPinPut(),
            BlocConsumer<OtpCubit, OtpState>(
              listener: (context, state) {
                if (state is VerifyOtpStateSuccess) {
                  context.go(
                    AppRoute.profile,
                    extra: context.read<OtpCubit>().verifyModel!.data!.profile,
                  );
                }
                if (state is VerifyOtpStateFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(' ${state.message}')),
                  );
                }
              },
              builder: (context, state) {
                return ButtonWidget(
                    onTap: () {
                      context
                          .read<OtpCubit>()
                          .validateOtp(countryCode: '+966', phone: '511111111');
                    },
                    textColor: Colors.white,
                    text: "verify".tr(),
                    buttonColor: const Color(0xff2c1d65));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BuildTimer(),
                BlocBuilder<OtpCubit, OtpState>(
                  buildWhen: (_, current) =>
                      current is TimeOutState || current is ActivateTimerState,
                  builder: (context, state) {
                    if (state is ActivateTimerState) {
                      return TextWidget(
                        title: "resendAfter".tr(),
                      );
                    } else {
                      return TextWidget(
                        title: "resend".tr(),
                      );
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
