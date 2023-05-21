import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

import 'recharge_amount.dart';

class MobileRechargeButtonSheet extends StatefulWidget {
  const MobileRechargeButtonSheet({Key? key}) : super(key: key);

  @override
  State<MobileRechargeButtonSheet> createState() => _MobileRechargeButtonSheetState();
}

class _MobileRechargeButtonSheetState extends State<MobileRechargeButtonSheet> {

  List<MobileRechargeMenu> homeMenuList = [
    MobileRechargeMenu(image: AllImages.airtelLogo),
    MobileRechargeMenu(image: AllImages.banglalinkLogo),
    MobileRechargeMenu(image: AllImages.grameenPhone),
    MobileRechargeMenu(image: AllImages.robiLogo),
    MobileRechargeMenu(image: AllImages.skittoLogo),
    MobileRechargeMenu(image: AllImages.teleTalkLogo),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: ColorResources.backGroundColor,
      child: Container(
        margin: const EdgeInsets.all(15),
        // height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Choose Operator", style: latoSemiBold16.copyWith(color: ColorResources.grey),),
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Text("Cancel", style: latoSemiBold.copyWith(color: ColorResources.red),)),
                  ],
                ),
                const SizedBox(height: 8,),
                Text("Choose the current operator for this number", style: latoSemiBold.copyWith(color: ColorResources.grey, fontSize: 12),),
              ],
            ),
            SizedBox(
              height: size.width / 3 * 2,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    mainAxisExtent: size.width / 3 - 10,
                  ),
                  itemCount: homeMenuList.length,
                  itemBuilder: (BuildContext context, int index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RechargeAmount(mobileRechargeMenu: homeMenuList[index],)));
                      },
                      child: Container(
                        height: size.width / 3 - 10,
                        color: ColorResources.white,
                        child: Center(
                          child: Image.asset("${homeMenuList[index].image}", height: 60, width: size.width / 6,),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class MobileRechargeMenu{
  String? image;

  MobileRechargeMenu({required this.image});
}