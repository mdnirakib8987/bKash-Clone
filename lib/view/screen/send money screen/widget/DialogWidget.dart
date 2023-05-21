import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:bkash_clone/view/screen/send%20money%20screen/widget/animated_button_widget.dart';
import 'package:flutter/material.dart';

import 'send_successfully_widget.dart';

class DialogWidget extends StatelessWidget {
  final String? cName;
  final String? cNumber;
  final String? cAmount;
  const DialogWidget({Key? key, this.cName, this.cNumber, this.cAmount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.white,
      appBar: AppBar(
        backgroundColor: ColorResources.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only( right: 8),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
                child: const Icon(Icons.close, size: 30, color: ColorResources.pink,)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15,),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("  Confirm to  ", style: latoLight24.copyWith(color: ColorResources.pink, fontWeight: FontWeight.w400),),
                      Text("Send Money", style: latoBold24.copyWith(color: ColorResources.pink),),
                    ],
                  ),
                  SizedBox(height: size.height / 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 15,bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: ColorResources.underLine,
                          ),
                          child: const Center(
                            child: Icon(Icons.person, color: ColorResources.white, size: 40,),),
                        ),
                        const SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("$cName", style: latoSemiBold.copyWith(color: ColorResources.black),),
                            const SizedBox(height: 5,),
                            Text("$cNumber", style: latoLight.copyWith(fontSize: 12, color: ColorResources.black),)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.height / 35),
                  Container(height: 0.7, color: ColorResources.grey,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width / 2.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10,),
                              Text("Total", style: latoRegular.copyWith(color: ColorResources.grey),),
                              Text("৳$cAmount", style: latoSemiBold16.copyWith(color: ColorResources.black),),
                              Text("+No Charge", style: latoRegular.copyWith(color: ColorResources.grey),),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(height: 100, width: 0.7, color: ColorResources.grey,),
                            const SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("New Balance", style: latoRegular.copyWith(),),
                                Text("৳$cAmount", style: latoSemiBold16.copyWith(),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(height: 0.7, color: ColorResources.grey,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width / 2.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Reference", style: latoRegular.copyWith(color: ColorResources.grey),),
                              const SizedBox(height: 10,),
                            ],
                          ),
                        ),
                        Container(height: 50, width: 0.7, color: ColorResources.grey,),
                      ],
                    ),
                  ),
                  Container(height: 0.7, color: ColorResources.grey,),
                  const SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AllImages.sendMoneyContactBook, height: 50,),
                      SizedBox(
                        width: size.width - 120,
                          child: Text("You can send money free up to 25,000 Tk. monthly by adding Priyo number", style: latoBold.copyWith(color: ColorResources.grey),))
                    ],
                  ),
                ],
              ),
            ),
          ),
          AnimatedButtonWidget(
            onComplete: (){
              Navigator.pop(context);
              showDialog(context: context, builder: (context) => Dialog(
                insetPadding: const EdgeInsets.all(15),
                child: SendMoneySuccessfulWidget(cName: cName, cNumber: cNumber, cAmount: cAmount,),
              ));
            },
          ),
        ],
      ),
    );
  }
}
