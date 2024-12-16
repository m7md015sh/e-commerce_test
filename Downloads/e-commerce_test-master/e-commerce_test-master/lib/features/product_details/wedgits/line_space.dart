import 'package:flutter/material.dart';

class LineSpaceWidget extends StatelessWidget {
  const LineSpaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 0.8,
      color: Colors.grey,
    );
  }
}
