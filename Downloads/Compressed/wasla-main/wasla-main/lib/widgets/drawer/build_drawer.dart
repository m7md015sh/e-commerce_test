import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wasla/controllers/auth/auth_controller.dart';
import 'package:wasla/controllers/auth/profile_controller.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/screens/auth/login.dart';
import 'package:wasla/screens/home/pages/home.dart';
import 'package:wasla/screens/home/pages/map.dart';
import 'package:wasla/screens/home/pages/profile.dart';
import 'package:wasla/screens/home/pages/ride_history.dart';

class BuildDrawer extends StatelessWidget {
  AuthController controller=Get.find();
  ProfileController profileController=Get.find();


   BuildDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            child: DrawerHeader(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              profileController.profileModel?.image==null? Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fill
                    )
                ),
              ):Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('http://notes.tsouq-store.com/wasla/imagesfp/${profileController.profileModel?.image}'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Good Morning".tr,
                        style: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.28),
                          fontSize: 14,
                        ),

                      ),
                      Text("${controller.name}",style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.9)
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                buildDrawerItem(title: "Home".tr, onPressed: (){Get.to(HomeScreen());}),
                buildDrawerItem(title: "Maps".tr, onPressed: (){Get.toNamed(RoutesConst.maps);}),
                //buildDrawerItem(title: "Payment History", onPressed: (){}),
                buildDrawerItem(title: "Ride History".tr, onPressed: (){Get.to(RideHistory());}),
               // buildDrawerItem(title: "Invite Friends", onPressed: (){}),
                //buildDrawerItem(title: "Promo Codes", onPressed: (){}),
                buildDrawerItem(title: "Profile".tr, onPressed: (){Get.toNamed(RoutesConst.profile);}),
                buildDrawerItem(title: "Support".tr, onPressed: (){}),
                buildDrawerItem(title: "LOG OUT".tr, onPressed: (){
                  controller.doLogOut();
                  Get.offNamed(RoutesConst.login);
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
  buildDrawerItem({required String title,required Function onPressed,Color color=Colors.black,double fontSize=20,FontWeight fontWeight = FontWeight.w700,double height=45}){
    return SizedBox(
      height: height,
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        dense: true,
        onTap: ()=>onPressed(),
        title: Text(title,style: GoogleFonts.poppins(fontSize: fontSize,fontWeight: fontWeight,color: color),),
      ),
    );
  }
}
