import 'package:flutter/foundation.dart';

class DepartmentIndexProvider extends ChangeNotifier {
  int _selectedDepartmentIndex = 1;

  void set setSelectedDepartmentIndex(int selectedDepartmentIndex) {
    _selectedDepartmentIndex = selectedDepartmentIndex;
    notifyListeners();
  }

  int get selectedDepartmentIndex => _selectedDepartmentIndex;
}
