import 'package:flutter/material.dart';

class LastDiagnoseViewModel {
  const LastDiagnoseViewModel(
      {required this.iconData,
      required this.diagnoseParameterName,
      required this.svgPath});

  final IconData iconData;
  final String diagnoseParameterName;
  final String svgPath;
}
