
import 'package:flutter/material.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/styles.dart';

class DetailsWidget extends StatelessWidget {
  final String type;
  final double value;
  final double percentage;
  final Color color;
  const DetailsWidget({super.key, required this.color,required this.percentage, required this.type, required  this.value});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = color; // Change to your dynamic background color
    Color textColor = _getTextColor(backgroundColor);
    return Column(
      children: [
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 120,
              child: Text(type,style:robotoMedium)),
            Text("\$${value.toStringAsFixed(0)}",style:robotoBold),
            Container(
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                color: backgroundColor,borderRadius: BorderRadius.circular(3)
              ),
              child: Center(
                child: Text("${percentage.toStringAsFixed(0)}%",style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall,color: textColor),),
              ),
            )
          ],
        ),
        const SizedBox(height: 10,),
        const Divider(color: Color.fromARGB(30, 158, 158, 158),)
      ],
    );
    
  }
  Color _getTextColor(Color backgroundColor) {
    // Calculate brightness by getting the average of RGB values
    int brightness = (backgroundColor.red * 299 +
            backgroundColor.green * 587 +
            backgroundColor.blue * 114) ~/
        1000;

    // Return white for dark backgrounds, black for light backgrounds
    return brightness > 128 ? Colors.black : Colors.white;
  }
}