// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:wasla/core/constant/colors.dart';
// import 'package:wasla/screens/home/pages/home.dart';
//
// import 'pages/balance.dart';
// import 'pages/bookings.dart';
// import 'pages/map.dart';
// import 'pages/profile.dart';
//
// class MainHomePage extends StatefulWidget {
//   const MainHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MainHomePage> createState() => _MainHomePageState();
// }
//
// class _MainHomePageState extends State<MainHomePage> {

//   List<String>title=[
//     "Home Screen",
//     "Bookings Screen",
//     "Map Screen",
//
//     "Balance Screen",
//     "Profile Screen",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text(title[_currentIndex]),
//       //  backgroundColor: AppColors.mainDarkColor,
//       ),
//       body: _widgetOptions.elementAt(_currentIndex),
//       bottomNavigationBar: ConvexAppBar(
//         items: const [
//           TabItem(icon:Icon( Icons.home),title: 'Home'),
//           TabItem(icon:Icon( Icons.indeterminate_check_box_outlined),title: 'Bookings'),
//           TabItem(icon:Icon( Icons.map),title: 'Map'),
//
//           TabItem(icon:Icon( Icons.account_balance_wallet),title: 'Balance'),
//           TabItem(icon:Icon( Icons.person),title: 'Profile'),
//         ],
//         initialActiveIndex: _currentIndex,
//         onTap:_changeItem ,
//         //backgroundColor: AppColors.mainColor,
//
//       ),
//     );
//   }
// }



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wasla/screens/home/pages/balance.dart';
import 'package:wasla/screens/home/pages/bookings.dart';
import 'package:wasla/screens/home/pages/home.dart';
import 'package:wasla/screens/home/pages/map.dart';
import 'package:wasla/screens/home/pages/profile.dart';
import 'package:wasla/widgets/drawer/build_drawer.dart';

class MainHomePage extends StatefulWidget {

// Read value
   MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
     appBar: AppBar(
       title: Text("PAYTAC".tr,style: TextStyle(color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold),),
       backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
     //body: _widgetOptions.elementAt(_currentIndex),
    );
  }



}
