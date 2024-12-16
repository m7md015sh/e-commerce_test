import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/features/profile_screen/widgets/profile_option_item.dart';

import 'widgets/user_porifile_avatar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //profile icon
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: UserAvatar(
              icon: Icons.person,
              backgroundColor: const Color(0xff7b64f3),
              iconColor: Colors.white,
              iconSize: 80.w,
              size: 100.w,
            ),
          ),

          const ProfileOptionItem(
            title: 'Orders',
            subTitle: 'Already have 12 order',
          ),
          const ProfileOptionItem(
            title: 'Shipping Addresses',
            subTitle: '3 address',
          ),
          const ProfileOptionItem(
            title: 'Payment methods',
            subTitle: 'Cash By Delivery',
          ),
          const ProfileOptionItem(
            title: 'Promocodes',
            subTitle: 'You have Special Promocodes',
          ),
          const ProfileOptionItem(
            title: 'My Reviews',
            subTitle: 'reviews for 3 items ',
          ),
          const ProfileOptionItem(
            title: 'Settings',
            subTitle: 'Notifications and Password',
          ),
        ],
      ),
    );
  }
}
