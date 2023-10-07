import 'package:clinic_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget implements PreferredSizeWidget {
  const ProfileInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CircleAvatar(
        child: Icon(
          Icons.verified_user_rounded,
          color: Colors.white,
        ),
        radius: 32,
        backgroundColor: Colors.blue,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Pedram Yamini',
                    style: kUserName,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Male',
                    style: kUserInfoStyle,
                  ),
                  Text(
                    ', ',
                    style: kUserInfoStyle,
                  ),
                  Text(
                    '23',
                    style: kUserInfoStyle,
                  ),
                  Text(
                    ' y.o',
                    style: kUserInfoStyle,
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            child: Icon(
              Icons.menu,
              color: Colors.blue,
            ),
            radius: 20,
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
