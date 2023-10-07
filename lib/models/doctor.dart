import 'package:clinic_flutter/constants/constants.dart';

class Doctor {
  String name;
  int rate;
  int yearsOfExperience;
  ClinicDepartments clinicDepartment;

  Doctor({
    required this.name,
    required this.rate,
    required this.yearsOfExperience,
    required this.clinicDepartment,
  });
}
