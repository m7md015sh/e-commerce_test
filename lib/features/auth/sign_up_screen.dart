import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/core/resources/assets_manager.dart';
import 'package:test1/core/resources/color_manager.dart';
import 'package:test1/core/resources/strings_manager.dart';
import 'package:test1/core/resources/styles_manager.dart';
import 'package:test1/features/auth/login_screen.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/stack_image_auth.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                StackImageAuth(text: AppStrings.getStarted,assetsImage: ImageAssets.signupDark,),
                Padding(
                  padding: EdgeInsets.all(16.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Text(
                        AppStrings.signupSteps,
                        style: getRegularStyle(color: ColorManager.lightGrey,fontSize: 16.sp),

                      ),
                      SizedBox(height: 20.h),
                      const CustomTextField(
                        icon: Icons.email,
                        labelText: AppStrings.email,
                      ),
                      SizedBox(height: 20.h),
                      const CustomTextField(
                        icon: Icons.lock,
                        labelText: AppStrings.password,
                        obscureText: true,
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {
                              // Handle checkbox change
                            },
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                text: AppStrings.iAgreeWithThe,
                                style: getRegularStyle(color: ColorManager.black,fontSize: 13.sp),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: AppStrings.termsOfService,
                                    style: getRegularStyle(color: ColorManager.blue,fontSize: 13.sp).copyWith(decoration: TextDecoration.underline)
                                  ),
                                  const TextSpan(
                                    text: AppStrings.andSymbol,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: AppStrings.privacyPolicy,
                                    style: getRegularStyle(color: ColorManager.blue,fontSize: 13.sp).copyWith(decoration: TextDecoration.underline)

                            ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      ElevatedButton(
                        onPressed: () {
                          // Continue action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorManager.primaryColor,
                          minimumSize: Size(double.infinity, 50.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          AppStrings.continueBtn,
                            style: getBoldStyle(color: ColorManager.white,fontSize: 14.sp)

                        ),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.doNotHaveAccount,
                              style: getRegularStyle(color: ColorManager.black,fontSize: 14.sp)

                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) =>  const LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              AppStrings.loginBtn,
                                style: getBoldStyle(color: ColorManager.primaryColor,fontSize: 14.sp)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
