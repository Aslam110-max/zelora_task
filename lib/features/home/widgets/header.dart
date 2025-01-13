import 'package:flutter/material.dart';
import 'package:zelora_task/common/widgets/custom_image.dart';
import 'package:zelora_task/features/home/widgets/header_icons.dart';
import 'package:zelora_task/utils/dimensions.dart';
import 'package:zelora_task/utils/images.dart';
import 'package:zelora_task/utils/styles.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Theme.of(context).primaryColorDark,Theme.of(context).primaryColorDark,Theme.of(context).primaryColorLight],end: Alignment.topRight,begin: Alignment.bottomLeft)
          ),
                  ),
        Padding(
          padding:  const EdgeInsets.only(top: Dimensions.paddingSizeLarge*3,right: Dimensions.paddingSizeLarge,left:Dimensions.paddingSizeLarge,),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35,
                    child: Row(
                      children: [
                        const CircleAvatar(radius: Dimensions.radiusLarge,backgroundImage: AssetImage(Images.profile),),
                        const SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello Hilya!",style: robotoMedium.copyWith(color: Colors.white,fontSize: Dimensions.fontSizeDefault
                            ),), Text("Welcom Back!",style: robotoRegular.copyWith(color: const Color.fromARGB(255, 168, 168, 168),fontSize: Dimensions.fontSizeExtraSmall
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Stack(
                      children: [
                        Icon(Icons.notifications_outlined,color: Colors.white,),
                        Positioned(
                          right: 1,
                          child: CircleAvatar(backgroundColor: Colors.red,radius: 5,))
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                width: 500,
              height: 160,
              decoration: BoxDecoration(
                boxShadow: const [BoxShadow(color: Colors.black12,blurRadius: 5)],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("YOUR BALANCE",style: robotoBold.copyWith(color: Colors.grey),),
                    Row(
                      children: [
                        Text("\$41,379,00",style: robotoBlack.copyWith(fontSize: Dimensions.fontSizeOverLarge),),
                        const SizedBox(width: 2,),
                        const Icon(Icons.remove_red_eye_outlined,size:15,color: Colors.grey,)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HeaderIcons(icon: Icons.arrow_upward, name: "Transfer"),
                        HeaderIcons(icon: Icons.arrow_downward, name: "Withdrow"),
                        HeaderIcons(icon: Icons.money_outlined, name: "Invest"),
                        HeaderIcons(icon: Icons.credit_card, name: "Top up"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ],
            
          ),
        )
      ],
    );
  }
}