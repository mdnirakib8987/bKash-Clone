// ignore_for_file: must_be_immutable

import 'package:bkash_clone/data/model/response/send_money_contact_model.dart';
import 'package:bkash_clone/data/model/response/send_money_menu_model.dart';
import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

import 'send_money_pin_screen.dart';

class SendMoneyAmoundPage extends StatefulWidget {
  final String? text;
  final SendMoneyContactModel? sendMoneyContactModel;
  const SendMoneyAmoundPage({Key? key, this.sendMoneyContactModel, this.text}) : super(key: key);

  @override
  State<SendMoneyAmoundPage> createState() => _SendMoneyAmoundPageState();
}

class _SendMoneyAmoundPageState extends State<SendMoneyAmoundPage> {

  TextEditingController amountTextController = TextEditingController();
  Color amtConfirmColor = Colors.black45;

  List<SendMoneyMenuModel> sendMoneyMenuList = [
    SendMoneyMenuModel(image: AllImages.sendMoneyAmount, titleName: "Send Money"),
    SendMoneyMenuModel(image: AllImages.gift, titleName: "Gift"),
    SendMoneyMenuModel(image: AllImages.birthday, titleName: "Birthday"),
    SendMoneyMenuModel(image: AllImages.wedding, titleName: "Wedding"),
    SendMoneyMenuModel(image: AllImages.anniversary, titleName: "Anniversary"),
    SendMoneyMenuModel(image: AllImages.congratulation, titleName: "Congratulation"),
    SendMoneyMenuModel(image: AllImages.goodLuck, titleName: "Good Luck"),
    SendMoneyMenuModel(image: AllImages.thankYou, titleName: "Thank you"),
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.backGroundColor,
      resizeToAvoidBottomInset: false,
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
              height: 100,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: ColorResources.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("To", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.sendMoneyContactModel!.cName, style: latoSemiBold.copyWith(color: ColorResources.black),),
                              const SizedBox(height: 5,),
                              Text(widget.sendMoneyContactModel!.cNumber, style: latoLight.copyWith(fontSize: 12, color: ColorResources.black),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4,),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorResources.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Amount", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
                      child: Row(
                        children: [
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SendMoneyPinScreen(amount: amountTextController.text.trim(), cName: widget.sendMoneyContactModel!.cName, cNumber: widget.sendMoneyContactModel!.cNumber,)));
                            },
                              child: const Icon(Icons.arrow_forward, color: ColorResources.grey, size: 30,))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("Available Balance: ", style: latoBold16.copyWith(color: ColorResources.black, ),),
                            Text("৳10.47", style: latoRegular16.copyWith(color: ColorResources.grey, ),),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: ColorResources.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 12, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Select your purpose", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                    const SizedBox(height: 2,),
                    SizedBox(
                      height: 150,
                      width: size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: sendMoneyMenuList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index){
                          return Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              height: 150,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(width: 0.3, color: ColorResources.grey),

                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image.asset("${sendMoneyMenuList[index].image}", height: 95, width: size.width, fit: BoxFit.fill,)),
                                  const SizedBox(height: 15,),
                                  Text("Send Money", style: latoRegular16.copyWith(color: ColorResources.greyShado600),)
                                ],
                              ),
                            ),
                          );
                          }),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: ColorResources.white,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 15,),
                  Image.asset(AllImages.sendMoneyContactBook, height: 50,),
                  Text("Add this number to my Priyo list", style: latoBold.copyWith(color: ColorResources.pink),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
