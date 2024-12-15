import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/resources/assets_manager.dart';

import 'package:test1/features/auth/widgets/stack_image_auth.dart';
import 'package:test1/features/bottom_var_bar/bottom_var_bar_cubit.dart';
import 'package:test1/features/auth/sign_up_screen.dart';
import 'package:test1/features/main_page.dart';

import 'widgets/custom_text_field.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackImageAuth(text: 'Welcome back!',assetsImage: ImageAssets.loginDark,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Log in with your data that you entered during your registration.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(icon: Icons.email, labelText: 'Email'),
                  const SizedBox(height: 20),
                  const CustomTextField(icon: Icons.lock, labelText: 'Password'),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Forgot password action
                      },
                      child: const Text('Forgot password?'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(
                          builder: (context) =>  MainScreen(),

                        ),
                        (route) => false,
                      );
                      context.read<BottomNavCubit>().updateIndex(0);

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff7b64f3),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Log in',style: TextStyle(color: Colors.white),),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) =>  const SignUpScreen(),
                            ),
                          );
                        },
                        child: const Text('Sign up'),
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
  }
}