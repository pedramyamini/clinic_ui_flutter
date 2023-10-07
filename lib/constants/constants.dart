import 'package:clinic_flutter/view_models/last_diagnose_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kUserName = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

const kUserNameLarge = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const kUserNameSmall = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 12,
);

const kUserInfoStyle = TextStyle(
  color: Color.fromARGB(255, 214, 214, 214),
  fontSize: 14,
);

final kHintTextStyleActivated = TextStyle(
  color: Colors.grey.shade100,
  fontSize: 14,
);

final kHintTextStyleDeactivated = TextStyle(
  color: Colors.grey.shade500,
  fontSize: 14,
);

const kWhiteClinicDepartmentTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
);

final kGreyTextStyle = TextStyle(
  color: Colors.grey.shade500,
  fontSize: 16,
);

final kBlueTextStyle = TextStyle(
  color: Colors.blue.shade600,
  fontSize: 16,
);

const kGradientScreenBackground = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(224, 224, 224, 1),
      Colors.white,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  ),
);

const kScreenMargin = EdgeInsets.symmetric(
  horizontal: 30,
  vertical: 5,
);

const kSectionHeaderTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 24,
);

const kSeeAllTextStyle = TextStyle(
  color: Colors.blue,
);

const kClinicDepartmentPadding = EdgeInsets.only(
  right: 30,
  left: 15,
  top: 15,
  bottom: 15,
);

final kClinicDepartmentBoxDecorationActivated = BoxDecoration(
  borderRadius: BorderRadius.circular(
    30,
  ),
  color: Colors.blue,
);

final kClinicDepartmentBoxDecorationDeactivated = BoxDecoration(
  borderRadius: BorderRadius.circular(
    30,
  ),
  color: Colors.grey.shade300,
);

final kDoctorBorderRadius = BorderRadius.circular(
  30,
);

const kClinicDepartmentIconColor = Colors.white;
const kClinicDepartmentIconSize = 32.0;

enum ClinicDepartments { Neurology, Heart, Radiology, Dental }

final Map<ClinicDepartments, FaIcon> kClinicDepartmentIcons = {
  ClinicDepartments.Neurology: FaIcon(
    FontAwesomeIcons.brain,
    color: kClinicDepartmentIconColor,
    size: kClinicDepartmentIconSize,
  ),
  ClinicDepartments.Heart: FaIcon(
    FontAwesomeIcons.heartPulse,
    color: kClinicDepartmentIconColor,
    size: kClinicDepartmentIconSize,
  ),
  ClinicDepartments.Radiology: FaIcon(
    FontAwesomeIcons.xRay,
    color: kClinicDepartmentIconColor,
    size: kClinicDepartmentIconSize,
  ),
  ClinicDepartments.Dental: FaIcon(
    FontAwesomeIcons.tooth,
    color: kClinicDepartmentIconColor,
    size: kClinicDepartmentIconSize,
  ),
};

final kGreyRoundBoxDecoration = BoxDecoration(
  color: Colors.grey.shade200,
  borderRadius: BorderRadius.all(
    Radius.circular(15),
  ),
);

final kBlueRoundBoxDecoration = BoxDecoration(
  color: Colors.blue,
  borderRadius: BorderRadius.all(
    Radius.circular(15),
  ),
);

final kLastDiagnoseDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(
    10,
  ),
  color: Colors.grey.shade300,
);

final kLastDiagnoseIconBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(
    10,
  ),
  color: Colors.blue,
);

enum DiagnoseParameters { BloodStatus, HeartBeat }

final Map<DiagnoseParameters, LastDiagnoseViewModel> kLastDiagnoseWidgetInfo = {
  DiagnoseParameters.BloodStatus: const LastDiagnoseViewModel(
    iconData: FontAwesomeIcons.heartCircleCheck,
    diagnoseParameterName: 'Blood Status',
    svgPath: 'assets/icons/voice_wave.svg',
  ),
  DiagnoseParameters.HeartBeat: const LastDiagnoseViewModel(
    iconData: FontAwesomeIcons.heartPulse,
    diagnoseParameterName: 'Heart Beat',
    svgPath: 'assets/icons/wave_pulse.svg',
  ),
};
