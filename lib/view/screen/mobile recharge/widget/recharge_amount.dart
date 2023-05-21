import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:bkash_clone/view/screen/mobile%20recharge/recharge_pin_screen.dart';
import 'package:bkash_clone/view/screen/mobile%20recharge/widget/mobile_recharge_button_sheet.dart';
import 'package:flutter/material.dart';

class RechargeAmount extends StatefulWidget {
  final MobileRechargeMenu? mobileRechargeMenu;
  const RechargeAmount({Key? key, this.mobileRechargeMenu}) : super(key: key);

  @override
  State<RechargeAmount> createState() => _RechargeAmountState();
}

class _RechargeAmountState extends State<RechargeAmount> {

  String isClick = "";
  TextEditingController amountTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Send Money", style: latoSemiBold.copyWith(color: ColorResources.white),),
        backgroundColor: Colors.pink,
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14.0, right: 16.0),
                child: InkWell(
                  onTap: (){},
                  child: SizedBox(
                      width: 34, height: 34, child: Image.asset(AllImages.bkashSplashLogo)),),
              ),
              Positioned(
                top: 14,
                right: 13,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1, color: ColorResources.white)
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 14),
        child: Column(
          children: [
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: ColorResources.white,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("For", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                        Container(
                          color: ColorResources.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: ColorResources.underLine,
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.person, color: ColorResources.grey, size: 40,),),
                                    ),
                                    const SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Md.Nazrul Islam", style: latoSemiBold.copyWith(color: ColorResources.black),),
                                        const SizedBox(height: 5,),
                                        Text("01858949651", style: latoLight.copyWith(fontSize: 12, color: ColorResources.black),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        const SizedBox(height: 65, width: 65,),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: ColorResources.backGroundColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(child: Image.asset("${widget.mobileRechargeMenu!.image}", height: 30, width: 30, fit: BoxFit.fill,)),
                        ),
                        Positioned(
                          top: 0,
                          right: 8,
                          child: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: ColorResources.pink,
                            ),
                            child: const Icon(Icons.create_outlined, color: ColorResources.white, size: 13,),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4,),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: ColorResources.white,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 20,),
                            InkWell(
                              onTap: (){
                                isClick = "20";
                                setState(() {

                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 55,
                                    decoration: isClick == "20"
                                        ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: ColorResources.pink,
                                    )
                                        : BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: ColorResources.pink, width: 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        isClick == "20"
                                            ? Text("৳20", style: latoRegular.copyWith(color: ColorResources.white),)
                                            : Text("৳20", style: latoRegular.copyWith(color: ColorResources.pink),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15,),
                            InkWell(
                              onTap: (){
                                isClick = "115";
                                setState(() {

                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 55,
                                    decoration: isClick == "115"
                                        ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: ColorResources.pink,
                                    )
                                        : BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: ColorResources.pink, width: 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        isClick == "115"
                                            ? Text("৳115", style: latoRegular.copyWith(color: ColorResources.white),)
                                            : Text("৳115", style: latoRegular.copyWith(color: ColorResources.pink),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15,),
                            InkWell(
                              onTap: (){
                                isClick = "255";
                                setState(() {

                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 55,
                                    decoration: isClick == "255"
                                        ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: ColorResources.pink,
                                    )
                                        : BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: ColorResources.pink, width: 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        isClick == "255"
                                            ? Text("৳255", style: latoRegular.copyWith(color: ColorResources.white),)
                                            : Text("৳255", style: latoRegular.copyWith(color: ColorResources.pink),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15,),
                            InkWell(
                              onTap: (){
                                isClick = "500";
                                setState(() {

                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 55,
                                    decoration: isClick == "500"
                                        ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: ColorResources.pink,
                                    )
                                        : BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: ColorResources.pink, width: 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        isClick == "500"
                                            ? Text("৳500", style: latoRegular.copyWith(color: ColorResources.white),)
                                            : Text("৳500", style: latoRegular.copyWith(color: ColorResources.pink),)
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15,)
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                            child: TextFormField(
                              controller: amountTextController,
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "৳0",
                                hintStyle: latoRegular.copyWith(color: ColorResources.grey.withOpacity(0.7), fontSize: 40),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                              ),
                              cursorColor: ColorResources.grey,
                              style: latoRegular.copyWith(color: ColorResources.pink, fontSize: 40),
                            )),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RechargePinScreen(image: widget.mobileRechargeMenu!.image, amount: amountTextController.text.trim(),)));
                          },
                            child: const Icon(Icons.arrow_forward, color: ColorResources.grey, size: 30,)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Available Balance: ", style: latoBold.copyWith(color: ColorResources.black),),
                        Text("৳0.47", style: latoRegular.copyWith(color: ColorResources.black),),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4,),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: ColorResources.white,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12, right: 20, left: 20),
                child: Container(
                  height: 40,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: ColorResources.pink, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.mobile_friendly, color: ColorResources.pink, size: 20,),
                      Text("Check Auto-Recharge Settings", style: latoRegular.copyWith(color: ColorResources.pink),)
                    ],
                  ),
                )
              ),
            ),
            const SizedBox(height: 4,),
            Expanded(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: ColorResources.white,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
