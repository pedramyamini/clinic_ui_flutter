import 'package:clinic_flutter/constants/constants.dart';
import 'package:flutter/foundation.dart';

import '../models/doctor.dart';

class DoctorsProvider extends ChangeNotifier {
  List<Doctor> _doctorsList = [
    Doctor(
      name: 'Weber',
      rate: 4,
      yearsOfExperience: 5,
      clinicDepartment: ClinicDepartments.Heart,
    ),
    Doctor(
      name: 'Khabat',
      rate: 5,
      yearsOfExperience: 15,
      clinicDepartment: ClinicDepartments.Dental,
    ),
    Doctor(
      name: 'Sara',
      rate: 3,
      yearsOfExperience: 2,
      clinicDepartment: ClinicDepartments.Dental,
    ),
    Doctor(
      name: 'Jane',
      rate: 4,
      yearsOfExperience: 6,
      clinicDepartment: ClinicDepartments.Neurology,
    ),
    Doctor(
      name: 'Ahmad',
      rate: 2,
      yearsOfExperience: 7,
      clinicDepartment: ClinicDepartments.Radiology,
    ),
    Doctor(
      name: 'Zahra',
      rate: 1,
      yearsOfExperience: 1,
      clinicDepartment: ClinicDepartments.Neurology,
    ),
  ];

  List<Doctor> get doctorsList => _doctorsList;
}
