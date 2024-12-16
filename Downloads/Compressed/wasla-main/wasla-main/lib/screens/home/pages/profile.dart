import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wasla/controllers/auth/auth_controller.dart';
import 'package:wasla/controllers/auth/profile_controller.dart';
import 'package:wasla/core/constant/app_constants.dart';
import 'package:wasla/core/constant/colors.dart';
import 'package:wasla/core/constant/dimensions.dart';
import 'package:wasla/core/constant/routes_const.dart';
import 'package:wasla/widgets/account_widget.dart';
import 'package:wasla/widgets/app_icon.dart';
import 'package:wasla/widgets/big_text.dart';
import 'package:wasla/widgets/drawer/build_drawer.dart';

class ProfileScreen extends StatelessWidget {

  File? pickedFile;
  ImagePicker imagePicker=ImagePicker();


   ProfileScreen({Key? key}) : super(key: key);
  final controller=Get.find<ProfileController>();
  final authController=Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
   //   drawer: BuildDrawer(),
      appBar: AppBar(
        title: Text("PAYTAC".tr,style: TextStyle(color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //         size: 30, // Changing Drawer Icon Size
        //       ),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
      ),
      body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: Dimensions.height20,left: Dimensions.width15,right: Dimensions.width15),
          child: Column(
            children: [
              //profile icon
              // AppIcon(
              //   icon: Icons.person,
              //   backgroundColor: AppColors.mainColor,
              //   iconColor: Colors.white,
              //   iconSize: Dimensions.height45 + Dimensions.height30,
              //   size: Dimensions.height15 * 10,
              // ),
              // CircleAvatar(
              //   backgroundColor: Colors.brown.shade800,
              //   child: Image.network('https://notes.tsouq-store.com/wasla/imagesfp/${controller.profileModel!.image}',width: 200,height: 200,),
              // ),
            controller.profileModel?.image==null?InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: (context)=>bottomSheetProfileImage(context));
              },
              child: Obx((){
                return CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 83,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage:controller.isProfilePicPassSheet.value==true? FileImage(File(controller.profilePicPath.value))as ImageProvider: AssetImage('assets/images/logo.png'),
                  ),
                );
              })
            ):  InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: context, builder: (context)=>bottomSheetProfileImage(context));
              },
              child: Obx((){
                return CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 83,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage:controller.isProfilePicPassSheet.value==true? FileImage(File(controller.profilePicPath.value))as ImageProvider: NetworkImage('http://notes.tsouq-store.com/wasla/imagesfp/${controller.profileModel?.image}'),
                  ),
                );
              })
            ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //name
                       InkWell(
                          onTap: () {
                            //   print('${controller.token}');
                            // AddOrder().makeOrder();
                          },
                          child: AccountWidget(
                            appIcon: AppIcon(
                              icon: Icons.person,
                              backgroundColor: AppColors.mainColor,
                              iconColor: Colors.white,
                              iconSize: Dimensions.height10 * 5 / 2,
                              size: Dimensions.height10 * 5,
                            ),
                            bigText: controller.isLoading_profile.value?BigText(text: "text".tr):BigText(text: '${controller.profileModel!.firstName} ${controller.isLoading_profile.value?BigText(text: "text"):controller.profileModel!.lastName}'),
                          ),
                        ),

                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      InkWell(
                        onTap: () {
                          //   print('${controller.token}');
                          // AddOrder().makeOrder();
                        },
                        child: AccountWidget(
                          appIcon: AppIcon(
                            icon: Icons.phone,
                            backgroundColor: AppColors.mainColor,
                            iconColor: Colors.white,
                            iconSize: Dimensions.height10 * 5 / 2,
                            size: Dimensions.height10 * 5,
                          ),
                          bigText: BigText(text: '${controller.isLoading_profile.value?BigText(text: "00000"):controller.profileModel!.phone} '),
                        ),
                      ),

                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      //phone
                      InkWell(
                        onTap: () {
                          Get.toNamed(RoutesConst.myOrder);
                        },
                        child: AccountWidget(
                          appIcon: AppIcon(
                            icon: Icons.present_to_all,
                            backgroundColor: AppColors.yellowColor,
                            iconColor: Colors.white,
                            iconSize: Dimensions.height10 * 5 / 2,
                            size: Dimensions.height10 * 5,
                          ),
                          bigText: BigText(
                            text: 'My History'.tr,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      //Language


                   GetBuilder<ProfileController>(builder: (controller) =>  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       AccountWidget(
                         appIcon: AppIcon(
                           icon: Icons.language,
                           backgroundColor: AppColors.yellowColor,
                           iconColor: Colors.white,
                           iconSize: Dimensions.height10 * 5 / 2,
                           size: Dimensions.height10 * 5,
                         ),
                         bigText: BigText(
                           text: 'Language'.tr,
                         ),
                       ),
                       Expanded(
                         child: Container(
                           margin: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                           width: Dimensions.width120,
                           padding: const EdgeInsets.symmetric(
                               horizontal: 6, vertical: 2),
                           decoration: BoxDecoration(
                             borderRadius:
                             BorderRadius.circular(Dimensions.radius15),
                             border: Border.all(
                                 color: AppColors.mainBlackColor, width: 2),
                           ),
                           child: DropdownButtonHideUnderline(
                             child: DropdownButton<String>(
                               iconSize: 25,
                               icon:
                               const Icon(Icons.arrow_drop_down_outlined),
                               items: [
                                 DropdownMenuItem(
                                   child: Text(
                                     AppConstants.arabic,
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: Dimensions.font16,
                                     ),
                                   ),value: AppConstants.ara,),
                                 DropdownMenuItem(
                                   child: Text(
                                     AppConstants.english,
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: Dimensions.font16,
                                     ),
                                   ),value: AppConstants.en,),


                               ],
                               // value: controller.localLang,
                               onChanged: (value) {
                                 AppConstants.ara!=value;
                                 controller.changeLanguage(value!);
                                 Get.updateLocale(Locale(value));
                               },
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),),

                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      //address
                      // AccountWidget(
                      //   appIcon: AppIcon(
                      //     icon: Icons.location_on,
                      //     backgroundColor: AppColors.yellowColor,
                      //     iconColor: Colors.white,
                      //     iconSize: Dimensions.height10 * 5 / 2,
                      //     size: Dimensions.height10 * 5,
                      //   ),
                      //   bigText: BigText(
                      //     text: 'Fill in your address',
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: Dimensions.height20,
                      // ),
                      //message
                      GestureDetector(
                        onTap: () {
                          // if(Get.find<AuthController>().userLoggedIn()){
                          //   Get.find<AuthController>().clearSharedData();
                          //   Get.offNamed(RouteHelper.getSignIn());
                          //   sharedPreferences!.clear();
                          // }
                          authController.doLogOut();
                          Get.offNamed(RoutesConst.login);

                         // controller.doLogout();
                        },
                        child: AccountWidget(
                          appIcon: AppIcon(
                            icon: Icons.login_outlined,
                            backgroundColor: Colors.redAccent,
                            iconColor: Colors.white,
                            iconSize: Dimensions.height10 * 5 / 2,
                            size: Dimensions.height10 * 5,
                          ),
                          bigText: BigText(
                            text: 'LOG OUT'.tr,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );

  }

  Widget bottomSheetProfileImage(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.2,
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child:  Text("Choose Profile Photo".tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  takePhoto(ImageSource.gallery);
                },
                child: Column(
                  children:  [
                    Icon(Icons.image),
                    SizedBox(height: 5,),
                    Text("Galary".tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const SizedBox(
                width: 80,
              ),

             InkWell(
               onTap: (){
                 takePhoto(ImageSource.camera);
               },
               child: Column(
                 children:  [
                   Icon(Icons.camera),
                   SizedBox(height: 5,),
                   Text("Camera".tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 ],
               ),
             )

            ],
          )

        ],
      ),

    );
  }

  Future<void> takePhoto(ImageSource source) async{
    final pickedImage=await imagePicker.pickImage(source:source ,imageQuality: 100);
        pickedFile=File(pickedImage!.path);
        controller.setProfileImagePath(pickedFile!.path);
        print(pickedFile);
  }
}
