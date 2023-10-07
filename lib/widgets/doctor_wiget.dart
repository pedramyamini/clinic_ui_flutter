import 'package:clinic_flutter/constants/constants.dart';
import 'package:clinic_flutter/models/doctor.dart';
import 'package:clinic_flutter/providers/doctor_page_view_controller_provider.dart';
import 'package:clinic_flutter/widgets/star_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DoctorWiget extends StatelessWidget {
  const DoctorWiget(this.index, {super.key, required this.doctor});

  final int index;
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<DoctorPageViewControllerProvider>().animateToPage(index);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: kDoctorBorderRadius,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: kDoctorBorderRadius,
                    image: DecorationImage(
                      image:
                          AssetImage('assets/doctors/doctor${index + 1}.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child:
                              kClinicDepartmentIcons[doctor.clinicDepartment],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: FaIcon(
                            FontAwesomeIcons.phone,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 5,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: StarRateWidget(
                        rate: doctor.rate,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              doctor.name,
              style: kUserName,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '${doctor.yearsOfExperience} years experienced',
              style: kGreyTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
