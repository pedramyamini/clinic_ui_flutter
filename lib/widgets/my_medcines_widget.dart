import 'package:clinic_flutter/constants/constants.dart';
import 'package:clinic_flutter/providers/medicine_page_view_controller_provider.dart';
import 'package:clinic_flutter/widgets/medicine_single_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyMedcinesWidget extends StatelessWidget {
  const MyMedcinesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: kScreenMargin,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Medicines',
                  style: kSectionHeaderTextStyle,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: PageView.builder(
              controller: context
                  .read<MedicinePageViewControllerProvider>()
                  .PageViewController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MedicineSingleWidget(
                  pageIndex: index,
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
