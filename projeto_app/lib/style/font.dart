// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:projeto_app/style/palette.dart';

class Font {
  final _titleFont = TextStyle(fontFamily: "ChivoMono", fontSize: 50, fontWeight: FontWeight.bold, 
    color: Palette().Tertiary);
  final _normalFont = TextStyle(fontFamily: "ChivoMono", fontSize: 20, color: Palette().Tertiary);
  final _buttonFont = TextStyle(fontFamily: "ChivoMono", fontSize: 20, color: Palette().Primary);

  TextStyle get TitleFont => _titleFont;
  TextStyle get NormalFont => _normalFont;
  TextStyle get ButtonFont => _buttonFont;
}