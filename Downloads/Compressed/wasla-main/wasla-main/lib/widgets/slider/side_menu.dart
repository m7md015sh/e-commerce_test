import 'package:flutter/material.dart';
import 'package:wasla/data/data_source/static/static.dart';
import 'package:wasla/data/model/side_menu_model.dart';
import 'package:wasla/widgets/slider/side_menu_widgets/side_menu_tile.dart';
import 'side_menu_widgets/card_info.dart';

class SideMenu extends StatefulWidget {
   SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final int currentIndex=0;

  SideMenuModel selectedMenu=sideMenuList.first;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(

        child: Drawer(
          width: 288,
         // height: double.infinity,
          //color: const Color(0x0ff17203a),
          child: SafeArea(
            child: Column(
              children:  [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const CardInfo(name: 'mohamed shokry', subName: '01028387119'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: const Text("Browse",style: TextStyle(color: Colors.white12,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
               ...sideMenuList.map((menu) => SideMenuTile(sideMenuModel: menu, onTap:(){
                 setState(() {
                   Navigator.pop(context);
                   selectedMenu=menu;

                 });
                 menu.onTap();

               }, isActive: selectedMenu==menu,))

              ],
            ),
          ),
        ),
      );

  }
}
