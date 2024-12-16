import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({Key? key,required this.name,required this.subName}) : super(key: key);
  final String name,subName;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(name,style: const TextStyle(color: Colors.white),),
      subtitle: Text(subName,style: const TextStyle(color: Colors.white24),),
    );
  }
}