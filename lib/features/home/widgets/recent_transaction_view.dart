import 'package:flutter/widgets.dart';
import 'package:zelora_task/features/home/widgets/component/recent_transaction_component.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/styles.dart';

class RecentTransactionView extends StatefulWidget {
  const RecentTransactionView({super.key});

  @override
  State<RecentTransactionView> createState() => _RecentTransactionViewState();
}

class _RecentTransactionViewState extends State<RecentTransactionView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(right: Dimensions.paddingSizeLarge,left:Dimensions.paddingSizeLarge,top: Dimensions.paddingSizeDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Recent Transaction",style: robotoBold.copyWith(fontSize: Dimensions.fontSizeExtraLarge),),
            ],
          ),
          const SizedBox(height: 10,),
           ListView.builder(
                            itemCount: 6,
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(
                              top: Dimensions.paddingSizeExtraSmall,
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return const RecentTransactionComponent();
                            },
                          ),

        ],
      ),
    );
  }
}