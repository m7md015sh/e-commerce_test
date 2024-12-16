// import 'package:flutter/material.dart';
//
// class AlertDialog extends StatelessWidget {
//   const AlertDialog({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Product Details'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return Dialog(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                   insetPadding: const EdgeInsets.symmetric(
//                       horizontal: 16.0, vertical: 24.0),
//                   child: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Product details',
//                           style: TextStyle(
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 16.0),
//                         const Text(
//                           'Story',
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 8.0),
//                         Text(
//                           'A cool gray cap in soft corduroy. Watch me. By buying cotton products from Lindex, you’re supporting more responsibly...',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                         const SizedBox(height: 16.0),
//                         const Text(
//                           'Details',
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 8.0),
//                         Text(
//                           '• Materials: 100% cotton, and lining\n'
//                           '• Structured\n'
//                           '• Adjustable cotton strap closure\n'
//                           '• High quality embroidery stitching\n'
//                           '• Head circumference: 21” – 24” / 54–62 cm\n'
//                           '• Embroidery stitching\n'
//                           '• One size fits most',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                         const SizedBox(height: 16.0),
//                         const Text(
//                           'Style Notes',
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 8.0),
//                         Text(
//                           'Style: Summer Hat\n'
//                           'Design: Plain',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                         const SizedBox(height: 16.0),
//                         Align(
//                           alignment: Alignment.bottomRight,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: const Text('Close'),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           },
//           child: const Text('Show Details Dialog'),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ShowAlert extends StatelessWidget {
  const ShowAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      insetPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Product details',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Story',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'A cool gray cap in soft corduroy. Watch me. By buying cotton products from Lindex, you’re supporting more responsibly...',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Details',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '• Materials: 100% cotton, and lining\n'
              '• Structured\n'
              '• Adjustable cotton strap closure\n'
              '• High quality embroidery stitching\n'
              '• Head circumference: 21” – 24” / 54–62 cm\n'
              '• Embroidery stitching\n'
              '• One size fits most',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Style Notes',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Style: Summer Hat\n'
              'Design: Plain',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 16.0),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
