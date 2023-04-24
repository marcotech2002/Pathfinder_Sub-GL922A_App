// ignore_for_file: prefer_const_constructors

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:projeto_app/view/auth/tela_login.dart';

import '../../style/font.dart';
import '../../style/palette.dart';

class TelaSplash extends StatelessWidget {
  const TelaSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network('assets/images/logo.png'),
      logoWidth: 200,
      backgroundColor: Palette().Primary,
      showLoader: true,
      loaderColor: Palette().Tertiary,
      loadingText: Text(
        'Carregando...',
        style: Font().NormalFont,
      ),
      durationInSeconds: 5,
      navigator: TelaLogin(),
    );
  }
}