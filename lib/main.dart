import 'package:clinic_flutter/providers/department_index_provider.dart';
import 'package:clinic_flutter/providers/department_page_view_controller_provider.dart';
import 'package:clinic_flutter/providers/doctor_index_provider.dart';
import 'package:clinic_flutter/providers/doctor_page_view_controller_provider.dart';
import 'package:clinic_flutter/providers/doctors_provider.dart';
import 'package:clinic_flutter/providers/medicine_index_provider.dart';
import 'package:clinic_flutter/providers/medicine_page_view_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DepartmentIndexProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DepartmentPageViewControllerProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DoctorIndexProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DoctorPageViewControllerProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DoctorsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MedicineIndexProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MedicinePageViewControllerProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus!.unfocus();
          },
          child: HomeScreen(),
        ),
      ),
    );
  }
}
