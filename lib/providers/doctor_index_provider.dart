import 'package:flutter/foundation.dart';

class DoctorIndexProvider extends ChangeNotifier {
  int _selectedDoctorIndex = 1;

  void set setSelectedDepartmentIndex(int selectedDoctorIndex) {
    _selectedDoctorIndex = selectedDoctorIndex;
    notifyListeners();
  }

  int get selectedDoctorIndex => _selectedDoctorIndex;
}
