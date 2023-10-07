import 'package:clinic_flutter/constants/constants.dart';
import 'package:clinic_flutter/providers/department_index_provider.dart';
import 'package:clinic_flutter/providers/department_page_view_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SearchBoxClinicDepartmentWidget extends StatelessWidget {
  const SearchBoxClinicDepartmentWidget({
    super.key,
    required this.clinicDepartmentIcon,
    required this.clinicDepartmentName,
    required this.clinicDepartmentAvailableDoctorsCount,
    required this.index,
  });

  final FaIcon clinicDepartmentIcon;
  final String clinicDepartmentName;
  final int clinicDepartmentAvailableDoctorsCount;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<DepartmentIndexProvider>().setSelectedDepartmentIndex =
            index;
        context
            .read<DepartmentPageViewControllerProvider>()
            .animateToPage(index);
      },
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
        child: Container(
          padding: kClinicDepartmentPadding,
          decoration: context
                      .watch<DepartmentIndexProvider>()
                      .selectedDepartmentIndex ==
                  index
              ? kClinicDepartmentBoxDecorationActivated
              : kClinicDepartmentBoxDecorationDeactivated,
          child: Row(
            children: [
              clinicDepartmentIcon,
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    clinicDepartmentName,
                    style: context
                                .watch<DepartmentIndexProvider>()
                                .selectedDepartmentIndex ==
                            index
                        ? kWhiteClinicDepartmentTextStyle
                        : kGreyTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '$clinicDepartmentAvailableDoctorsCount Doctors Available',
                    style: context
                                .watch<DepartmentIndexProvider>()
                                .selectedDepartmentIndex ==
                            index
                        ? kHintTextStyleActivated
                        : kHintTextStyleDeactivated,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
