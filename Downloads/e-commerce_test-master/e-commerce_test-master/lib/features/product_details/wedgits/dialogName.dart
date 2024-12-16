import 'package:flutter/material.dart';
import 'package:test1/features/product_details/wedgits/alert_dialog.dart';
import 'package:test1/features/product_details/wedgits/line_space.dart';

class DialogName extends StatelessWidget {
  const DialogName({super.key, required this.title, required this.icon});
  final title;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const ShowAlert();
              },
            );
          },
          leading: Icon(
            icon,
            size: 30,
          ),
          title: Text(
            '$title',
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: const Icon(
            Icons.chevron_right,
            color: Colors.grey,
            size: 36,
          ),
        ),
        const LineSpaceWidget(),
      ],
    );
  }
}
