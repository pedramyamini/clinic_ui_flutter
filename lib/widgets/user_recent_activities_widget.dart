import 'package:clinic_flutter/constants/constants.dart';
import 'package:clinic_flutter/providers/doctor_page_view_controller_provider.dart';
import 'package:clinic_flutter/providers/doctors_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'doctor_wiget.dart';

class UserRecentActivitiesWidget extends StatelessWidget {
  const UserRecentActivitiesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: kScreenMargin,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Recent Visit',
                style: kSectionHeaderTextStyle,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: kSeeAllTextStyle,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 240,
          child: PageView.builder(
            padEnds: true,
            itemBuilder: (context, index) {
              return DoctorWiget(
                index,
                doctor: context.read<DoctorsProvider>().doctorsList[index],
              );
            },
            itemCount: context.read<DoctorsProvider>().doctorsList.length,
            controller: context
                .read<DoctorPageViewControllerProvider>()
                .PageViewController,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
