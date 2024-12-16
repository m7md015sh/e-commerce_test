// import 'package:flutter/material.dart';
// import 'package:google_maps_webservice/places.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
//
// Widget buildFloatingSearchBar() {
//   final bool isPortrait =
//       MediaQuery.of(context).orientation == Orientation.portrait;
//   return InkWell(
//     onTap: () async {
//       Prediction? p = await showGoogleAutoComplete();
//       destinationController.text = p!.description!;
//       setState(() {
//         showSourceField = true;
//       });
//     },
//     child: FloatingSearchBar(
//       controller: controller,
//       onFocusChanged: (_) {},
//       elevation: 6.0,
//       hintStyle: const TextStyle(fontSize: 18),
//       queryStyle: const TextStyle(fontSize: 18),
//       hint: 'Find a Place',
//       border: const BorderSide(
//         style: BorderStyle.none,
//       ),
//       margins: const EdgeInsets.fromLTRB(20, 70, 20, 0),
//       padding: const EdgeInsets.symmetric(horizontal: 2),
//       height: 52,
//       iconColor: Colors.blue,
//       scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
//       transitionDuration: const Duration(milliseconds: 600),
//       transitionCurve: Curves.easeInOut,
//       physics: const BouncingScrollPhysics(),
//       axisAlignment: isPortrait ? 600 : 500,
//       openAxisAlignment: 0.0,
//       width: isPortrait ? 600 : 500,
//       debounceDelay: const Duration(milliseconds: 500),
//       onQueryChanged: (query) {},
//       transition: CircularFloatingSearchBarTransition(),
//       actions: [
//         FloatingSearchBarAction(
//           showIfOpened: false,
//           showIfClosed: false,
//           child: CircularButton(
//             icon: Icon(
//               Icons.place,
//               color: Colors.black.withOpacity(0.6),
//             ),
//             onPressed: () {},
//           ),
//         )
//       ],
//       builder: (BuildContext context, Animation<double> transition) {
//         return ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [],
//           ),
//         );
//       },
//     ),
//   );
// }