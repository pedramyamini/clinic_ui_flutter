import 'dart:math';
import 'package:clinic_flutter/constants/constants.dart';
import 'package:clinic_flutter/providers/department_page_view_controller_provider.dart';
import 'package:clinic_flutter/widgets/search_box_clinic_department_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorSearchboxWidget extends StatelessWidget {
  const DoctorSearchboxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: kScreenMargin,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meet a Doctor',
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
              SizedBox(
                height: 20,
              ),
              SearchBar(
                hintText: 'Search Doctor',
                hintStyle: MaterialStatePropertyAll(
                  kHintTextStyleDeactivated,
                ),
                leading: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 87,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return SearchBoxClinicDepartmentWidget(
                clinicDepartmentIcon:
                    kClinicDepartmentIcons[ClinicDepartments.values[index]]!,
                clinicDepartmentName: ClinicDepartments.values[index].name,
                index: index,
                //provider
                clinicDepartmentAvailableDoctorsCount:
                    //TODO: read clinicDepartmentAvailableDoctorsCount from provider
                    Random().nextInt(10) + 1,
              );
            },
            itemCount: kClinicDepartmentIcons.length,
            padEnds: true,
            controller: context
                .read<DepartmentPageViewControllerProvider>()
                .PageViewController,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
