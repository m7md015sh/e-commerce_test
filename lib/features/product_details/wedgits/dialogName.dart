import 'package:flutter/material.dart';
import 'package:test1/features/product_details/wedgits/line_space.dart';

class DialogName extends StatelessWidget {
   DialogName({Key? key,required this.title,required this.icon}) : super(key: key);
    final title;
    final icon;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          leading: Icon(icon,size: 30,),
          title: Text(
            '$title',
            style: TextStyle(
              fontSize: 18.0,

              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: Icon(Icons.chevron_right, color: Colors.grey,size: 36,),
          onTap: () {
            // Add navigation or any other functionality here
          },
        ),
        LineSpaceWidget(),
      ],
    );

  }
}
