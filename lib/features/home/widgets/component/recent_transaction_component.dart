import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zelora_task/common/widgets/custom_image.dart';
import 'package:zelora_task/features/home/domain/model/transaction_model.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/styles.dart';

class RecentTransactionComponent extends StatefulWidget {
  final Transaction transaction;
  const RecentTransactionComponent({super.key, required this.transaction});

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
                CircleAvatar(
              backgroundColor: const Color.fromARGB(11, 0, 0, 0),
              radius: Dimensions.radiusDefault*2.5,
              child: CustomImage(imagePath:widget.transaction.appIconUrl,height:25 ,fit: BoxFit.fill,)),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.transaction.appName, style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault),),
                  Text(widget.transaction.reason,style: robotoBold.copyWith(fontSize: Dimensions.fontSizeSmall,color: Colors.grey),)
                ],
              ),
      
            ],
           ),
                       Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("${widget.transaction.isIncome?"+ ":""}\$${(widget.transaction.amount).toStringAsFixed(widget.transaction.isIncome?0:2)}", style: robotoBold.copyWith(fontSize: Dimensions.fontSizeDefault,color: widget.transaction.isIncome?Colors.green:Colors.black),),
                  Text(DateFormat('dd MMM yyyy').format(widget.transaction.date),style: robotoBold.copyWith(fontSize: Dimensions.fontSizeSmall,color: Colors.grey),)
                ],
              ),
          ],
        ),
      ),
    );
  }
}