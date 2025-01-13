import 'package:flutter/material.dart';
import 'package:zelora_task/features/home/widgets/header.dart';
import 'package:zelora_task/features/home/widgets/recent_transaction_view.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/images.dart';
import 'package:zelora_task/utils/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 15,),
            Padding(padding:const EdgeInsets.only(right: Dimensions.paddingSizeLarge,left:Dimensions.paddingSizeLarge,),
            child: Column(
              children: [
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).hintColor
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(radius: Dimensions.radiusExtraLarge,backgroundImage: AssetImage(Images.financial,),backgroundColor: Colors.white,),
                        SizedBox(
                          width: 250,
                          child: Text.rich(
                                    TextSpan(
                                      text: "Let's check your ", // Regular text
                                      style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),
                                      children: [
                                        TextSpan(
                                          text: 'Finacial Insight', // Bolded word
                                          style: robotoBlack.copyWith(fontSize: Dimensions.fontSizeDefault),
                                        ),
                                         TextSpan(
                                          style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),
                                          text: ' for the month of june!', // Regular text
                                        ),
                                      ],
                                    ),
                                  ),
                        ),
                        const Icon(Icons.arrow_back_ios_new,size: 12,textDirection: TextDirection.rtl,)
                          
                      ],
                    ),
                  ),
                )
              ],
            ),
            ),
            const RecentTransactionView()
        
          ],
        ),
      ),
    );
  }
}