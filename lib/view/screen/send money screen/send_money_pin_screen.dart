
import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

import 'widget/DialogWidget.dart';

class SendMoneyPinScreen extends StatefulWidget {
  final String? amount;
  final String? cName;
  final String? cNumber;
  const SendMoneyPinScreen({Key? key, this.amount, this.cName, this.cNumber}) : super(key: key);

  @override
  State<SendMoneyPinScreen> createState() => _SendMoneyPinScreenState();
}

class _SendMoneyPinScreenState extends State<SendMoneyPinScreen> {

  TextEditingController amountTextController = TextEditingController();
  TextEditingController referenceController = TextEditingController();
  TextEditingController enterPinController = TextEditingController();
  Color amtConfirmColor = Colors.black45;

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
                              Text("${widget.cName}", style: latoSemiBold.copyWith(color: ColorResources.black),),
                              const SizedBox(height: 5,),
                              Text("${widget.cNumber}", style: latoLight.copyWith(fontSize: 12, color: ColorResources.black),)
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
                padding: const EdgeInsets.only(left: 10, top: 22, bottom: 30, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text("Amount", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.grey),),
                        Text("৳${widget.amount}", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Charge", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.grey),),
                        Text("+ ৳0.00", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Total", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.grey),),
                        Text("৳${widget.amount}", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2,),
            /// ------------->>>>>>>> Reference <<<<<<<<<<-------------
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: ColorResources.white,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Reference", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                    TextFormField(
                      controller: referenceController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Tap to add a note",
                          hintStyle: latoSemiBold.copyWith(color: ColorResources.grey),
                          border: InputBorder.none
                      ),
                      cursorColor: ColorResources.pink,
                      // cursorHeight: 50,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2,),
            /// ------------->>>>>>>> Enter Your Pin <<<<<<<<<<-------------
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
                    InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        onTap: (){

                        },
                        child: const Icon(Icons.lock, color: ColorResources.pink,)),
                    Expanded(
                      child: TextFormField(
                        controller: enterPinController,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        obscureText: true,
                        autofocus: true,
                        decoration: InputDecoration(
                            hintText: "Enter Pin",
                            hintStyle: latoSemiBold.copyWith(color: ColorResources.grey),
                            border: InputBorder.none
                        ),
                        cursorColor: ColorResources.pink,
                        // cursorHeight: 50,
                      ),
                    ),
                    InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        onTap: (){

                          showDialog(
                              context: context,
                              builder: (context){
                                return const Dialog(
                                  insetPadding: EdgeInsets.all(15),
                                  child: DialogWidget(),
                                );
                              });
                        },
                        child: const Icon(Icons.arrow_forward, color: ColorResources.grey,))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2,),
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
