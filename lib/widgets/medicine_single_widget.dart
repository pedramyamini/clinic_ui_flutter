import 'package:clinic_flutter/constants/constants.dart';
import 'package:clinic_flutter/providers/medicine_index_provider.dart';
import 'package:clinic_flutter/providers/medicine_page_view_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MedicineSingleWidget extends StatelessWidget {
  const MedicineSingleWidget({
    super.key,
    required this.pageIndex,
  });

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MedicineIndexProvider>().setSelectedMedicineIndex =
            pageIndex;
        context
            .read<MedicinePageViewControllerProvider>()
            .animateToPage(pageIndex);
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  child: Image(
                    height: 200,
                    image: AssetImage(
                      'assets/medicines/medicine${pageIndex + 1}.jpg',
                    ),
                    fit: BoxFit.fitHeight,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.light_mode_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Text(
                            '2',
                            style: kBlueTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Text(
                      '$pageIndex',
                      style: kUserName,
                    ),
                  ),
                  Text(
                    'Prednisone',
                    style: kBlueTextStyle,
                  ),
                  Text(
                    '(250mg)',
                    style: kGreyTextStyle,
                  ),
                ],
              ),
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
