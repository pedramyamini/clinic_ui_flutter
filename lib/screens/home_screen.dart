import 'package:clinic_flutter/constants/constants.dart';
import 'package:clinic_flutter/widgets/last_diagnose_widget.dart';
import 'package:clinic_flutter/widgets/profile_info_widget.dart';
import 'package:clinic_flutter/widgets/user_recent_activities_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/doctor_searchbox_widget.dart';
import '../widgets/my_medcines_widget.dart';
import '../widgets/youtube_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileInfoWidget(),
      body: Container(
        decoration: kGradientScreenBackground,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                DoctorSearchboxWidget(),
                SizedBox(
                  height: 30,
                ),
                UserRecentActivitiesWidget(),
                SizedBox(
                  height: 0,
                ),
                LastDiagnoseWidget(),
                SizedBox(
                  height: 20,
                ),
                MyMedcinesWidget(),
                YoutubeWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
