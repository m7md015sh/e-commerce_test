import 'package:flutter/material.dart';
import 'package:wasla/data/model/side_menu_model.dart';

class SideMenuTile extends StatelessWidget {
   const SideMenuTile({Key? key, required this.sideMenuModel, required this.onTap, required this.isActive}) : super(key: key);

  final SideMenuModel sideMenuModel;
  final VoidCallback onTap;
  final bool isActive;
  final int currentIndex=0;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children:   [

          Divider(color: Colors.white24,height: 1,),

        Stack(
          children: [
         isActive?   Positioned(
              height: 56,
              width: 288,
              child: Container(

                decoration: BoxDecoration(
                  color: Color(0xff6792ff),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ):SizedBox(),
            ListTile(
              onTap: onTap,
              leading:  SizedBox(
                width: 34,
                height: 34,
                child: Icon(sideMenuModel.icon,color: Colors.white,size: 24),
              ),
              title: Text(sideMenuModel.title,style: const TextStyle(color: Colors.white,fontSize: 16),),
            ),
          ],
        ),
      ],
    );
  }
}
