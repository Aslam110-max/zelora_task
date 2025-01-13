import 'package:flutter/material.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/styles.dart';

class HeaderIcons extends StatelessWidget {
  final IconData icon;
  final String name; 
  const HeaderIcons({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: Dimensions.radiusLarge,
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          child: Center(
            child: Icon(icon,size: 15,color: Colors.white,),
          ),
        ),Text(name,style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall),)
      ],
    );
  }
}