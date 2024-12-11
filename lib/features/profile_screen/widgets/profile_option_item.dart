import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileOptionItem extends StatelessWidget {
  const ProfileOptionItem({super.key, required this.title, required this.subTitle, this.onPressed});
  final String title;
  final String subTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 6.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        child:  ListTile(
          trailing: IconButton(
              onPressed: onPressed,
             icon: const Icon(Icons.navigate_next)
          ),
          title: Text(title),
          subtitle: Text(subTitle),
        ),
      ),
    );
  }
}
