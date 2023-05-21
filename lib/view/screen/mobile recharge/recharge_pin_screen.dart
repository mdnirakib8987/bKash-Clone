import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:bkash_clone/view/screen/send%20money%20screen/widget/DialogWidget.dart';
import 'package:flutter/material.dart';

class RechargePinScreen extends StatefulWidget {
  final String? image;
  final String? amount;
  const RechargePinScreen({Key? key, this.image, this.amount}) : super(key: key);

  @override
  State<RechargePinScreen> createState() => _RechargePinScreenState();
}

class _RechargePinScreenState extends State<RechargePinScreen> {

  String isClick = "Propaid";
  String proPaid = "Propaid";
  String postPaid = "Postpaid";
  TextEditingController enterPinController = TextEditingController();

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
                          child: Center(child: Image.asset("${widget.image}", height: 30, width: 30, fit: BoxFit.fill,)),
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
            Container(
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: ColorResources.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Select Type", style: latoRegular.copyWith(color: ColorResources.black, fontSize: 12),),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            isClick = proPaid;
                            setState(() {

                            });
                          },
                          child: Container(
                            height: 37,
                            width: size.width / 4.8,
                            decoration: isClick == proPaid ?  BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorResources.pink
                            ) : BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 1, color: ColorResources.pink),
                            ),
                            child: Center(
                              child: isClick == proPaid
                                  ? Text(proPaid, style: latoRegular.copyWith(color: ColorResources.white),)
                                  : Text(proPaid, style: latoRegular.copyWith(color: ColorResources.pink),))
                          ),
                        ),
                        const SizedBox(width: 5,),
                        InkWell(
                          onTap: (){
                            isClick = postPaid;
                            setState(() {

                            });
                          },
                          child: Container(
                            height: 37,
                            width: size.width / 4.8,
                            decoration: isClick == postPaid
                                ? BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: ColorResources.pink
                            )
                                : BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 1, color: ColorResources.pink),
                        ),
                            child: Center(
                              child: isClick == postPaid
                                  ? Text(postPaid, style: latoRegular.copyWith(color: ColorResources.white),)
                                  : Text(postPaid, style: latoRegular.copyWith(color: ColorResources.pink),))
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2,),
            /// ----------------->>>> Enter Pin <<<<-------------
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
