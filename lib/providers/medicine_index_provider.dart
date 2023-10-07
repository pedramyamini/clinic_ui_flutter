import 'package:flutter/foundation.dart';

class MedicineIndexProvider extends ChangeNotifier {
  int _selectedMedicineIndex = 1;

  void set setSelectedMedicineIndex(int selectedMedicineIndex) {
    _selectedMedicineIndex = selectedMedicineIndex;
    notifyListeners();
  }

  int get selectedMedicineIndex => _selectedMedicineIndex;
}
