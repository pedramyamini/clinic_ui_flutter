import 'package:clinic_flutter/constants/constants.dart';
import 'package:clinic_flutter/widgets/last_diagnose_single_widget.dart';
import 'package:flutter/material.dart';

class LastDiagnoseWidget extends StatelessWidget {
  const LastDiagnoseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kScreenMargin,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Diagnose',
                    style: kSectionHeaderTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Cluster Headache',
                    style: kGreyTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LastDiagnoseSingleWidget(
                diagnoseParameterType: DiagnoseParameters.BloodStatus,
                firstParameterValue: '110',
                secondParameterValue: '70',
              ),
              SizedBox(
                width: 10,
              ),
              LastDiagnoseSingleWidget(
                diagnoseParameterType: DiagnoseParameters.HeartBeat,
                firstParameterValue: '120',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
