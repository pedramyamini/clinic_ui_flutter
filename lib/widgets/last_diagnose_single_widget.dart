import 'package:clinic_flutter/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LastDiagnoseSingleWidget extends StatelessWidget {
  const LastDiagnoseSingleWidget({
    super.key,
    required this.diagnoseParameterType,
    required this.firstParameterValue,
    this.secondParameterValue,
  });

  final DiagnoseParameters diagnoseParameterType;
  final String firstParameterValue;
  final String? secondParameterValue;

  @override
  Widget build(BuildContext context) {
    final topLeftIcon =
        kLastDiagnoseWidgetInfo[diagnoseParameterType]!.iconData;
    final diagnoseParameterName =
        kLastDiagnoseWidgetInfo[diagnoseParameterType]!.diagnoseParameterName;
    final svgPicturePath =
        kLastDiagnoseWidgetInfo[diagnoseParameterType]!.svgPath;

    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: kGreyRoundBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: FaIcon(
                topLeftIcon,
                color: Colors.pinkAccent,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  diagnoseParameterName,
                  style: kUserName,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 15,
                          left: 15,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '$firstParameterValue',
                                style: kUserNameLarge,
                              ),
                              Visibility(
                                visible: diagnoseParameterType ==
                                    DiagnoseParameters.BloodStatus,
                                child: Text(
                                  '/$secondParameterValue',
                                  style: kUserNameSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            decoration: kLastDiagnoseIconBoxDecoration,
                            child: SvgPicture.asset(
                              svgPicturePath,
                              color: Colors.white,
                              fit: BoxFit.cover,
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                    height: 50,
                    decoration: kLastDiagnoseDecoration,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
