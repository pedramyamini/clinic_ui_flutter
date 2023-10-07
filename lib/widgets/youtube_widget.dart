import 'package:clinic_flutter/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class YoutubeWidget extends StatelessWidget {
  const YoutubeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Text(
            'Hubermanlab Podcasts',
            style: kSectionHeaderTextStyle,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: kScreenMargin,
          decoration: kGreyRoundBoxDecoration,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.zero,
                    height: 220,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.bottomRight,
                        image: AssetImage(
                          'assets/doctors/andrew_huberman.png',
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 25,
                          top: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.youtube,
                                    color: Colors.red,
                                    size: 80,
                                  ),
                                  Text(
                                    'Dr. Andrew',
                                    style: kSectionHeaderTextStyle,
                                  ),
                                  Text(
                                    'Huberman',
                                    style: kSectionHeaderTextStyle,
                                  ),
                                  Text(
                                    'Neuroscientist',
                                    style: kGreyTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
