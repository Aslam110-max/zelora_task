import 'package:flutter/material.dart';
import 'package:zelora_task/common/widgets/custom_image.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/images.dart';
import 'package:zelora_task/utils/styles.dart';

class RecentTransactionComponent extends StatefulWidget {
  const RecentTransactionComponent({super.key});

  @override
  State<RecentTransactionComponent> createState() => _RecentTransactionComponentState();
}

class _RecentTransactionComponentState extends State<RecentTransactionComponent> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.only(bottom: Dimensions.paddingSizeDefault),
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
            children: [
               const CircleAvatar(
              backgroundColor: Color.fromARGB(11, 0, 0, 0),
              radius: Dimensions.radiusDefault*2.5,
              child: CustomImage(imagePath: Images.stripe,height:25 ,fit: BoxFit.fill,)),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Youtube", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                  Text("Subscription Payment",style: robotoBold.copyWith(fontSize: Dimensions.fontSizeSmall,color: Colors.grey),)
                ],
              ),
      
            ],
           ),
                       Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$15,00", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                  Text("16 MAY 2024",style: robotoBold.copyWith(fontSize: Dimensions.fontSizeSmall,color: Colors.grey),)
                ],
              ),
          ],
        ),
      ),
    );
  }
}