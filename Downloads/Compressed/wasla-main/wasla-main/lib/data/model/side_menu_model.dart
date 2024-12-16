import 'package:flutter/material.dart';

class SideMenuModel{
  final String title;
  final IconData icon;
  final VoidCallback onTap;



  SideMenuModel({required this.title,required this.icon,required this.onTap});
}