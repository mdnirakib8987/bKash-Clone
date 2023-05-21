import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:bkash_clone/view/screen/my%20home%20screen/my_home_screen.dart';
import 'package:flutter/material.dart';

class SendMoneySuccessfulWidget extends StatefulWidget {
  final String? cName;
  final String? cNumber;
  final String? cAmount;
  const SendMoneySuccessfulWidget({Key? key, this.cName, this.cNumber, this.cAmount}) : super(key: key);

  @override
  State<SendMoneySuccessfulWidget> createState() => _SendMoneySuccessfulWidgetState();
}

class _SendMoneySuccessfulWidgetState extends State<SendMoneySuccessfulWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
        future: Future.delayed(
            const Duration(milliseconds: 5000)
        ),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      const SizedBox(height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Your ", style: latoLight24.copyWith(color: ColorResources.pink, fontWeight: FontWeight.w400),),
                                  Text("Send Money ", style: latoBold24.copyWith(color: ColorResources.pink),),
                                  Text("is", style: latoLight24.copyWith(color: ColorResources.pink, fontWeight: FontWeight.w400),),
                                ],
                              ),
                              Text("successful ", style: latoBold24.copyWith(color: ColorResources.green),),
                            ],
                          ),
                          const Icon(Icons.check_circle_outlined, color: ColorResources.green, size: 40 )
                        ],
                      ),
                      SizedBox(height: size.height / 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 15,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
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
                                    Text("${widget.cName}", style: latoSemiBold.copyWith(color: ColorResources.black),),
                                    const SizedBox(height: 5,),
                                    Text("${widget.cNumber}", style: latoLight.copyWith(fontSize: 12, color: ColorResources.black),)
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1, color: ColorResources.pink),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(Icons.call, color: ColorResources.pink, size: 20,),
                                  Text("Call", style: latoRegular.copyWith(color: ColorResources.pink),)
                                ],
                              ),
                            ),
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
                                  Text("Time", style: latoRegular.copyWith(color: ColorResources.grey),),
                                  Text("06:13pm 09/05/23", style: latoSemiBold.copyWith(color: ColorResources.black),),
                                  const SizedBox(height: 10,),
                                ],
                              ),
                            ),
                            Container(height: 50, width: 0.7, color: ColorResources.grey,),
                            const SizedBox(width: 20,),
                            SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10,),
                                  Text("Transaction ID", style: latoRegular.copyWith(color: ColorResources.grey),),
                                  const SizedBox(height: 2,),
                                  Row(
                                    children: [
                                      Text("AE919SKN1P", style: latoSemiBold.copyWith(color: ColorResources.black),),
                                      const SizedBox(width: 3,),
                                      const Icon(Icons.copy, color: ColorResources.pink, size: 15,)
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                ],
                              ),
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
                                  const SizedBox(height: 10,),
                                  Text("Total", style: latoRegular.copyWith(color: ColorResources.grey),),
                                  Text("৳${widget.cAmount}", style: latoSemiBold16.copyWith(color: ColorResources.black),),
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
                                    Text("New Balance", style: latoRegular.copyWith(color: ColorResources.grey),),
                                    const SizedBox(height: 3,),
                                    Row(
                                      children: [
                                        Text("৳1020.82", style: latoSemiBold16.copyWith(color: ColorResources.black),),
                                        const SizedBox(width: 3,),
                                        const Icon(Icons.visibility_off_outlined, color: ColorResources.pink, size: 20,)
                                      ],
                                    ),
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
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: ColorResources.pink,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Icon(Icons.star, color: ColorResources.white, size: 25,)),
                              Text("You have earned", style: latoRegular.copyWith(color: ColorResources.grey),),
                              Text("bKash Reward Points", style: latoSemiBold18.copyWith(color: ColorResources.black),),
                              Row(
                                children: [
                                  Text("To use your points, check your ", style: latoRegular16.copyWith(color: ColorResources.black),),
                                  InkWell(
                                    onTap: (){},
                                      child: Text("bKash Rewards", style: latoRegular16.copyWith(color: ColorResources.pink),))
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomeScreen()));
                  },
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    color: ColorResources.pink,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Back to Home", style: latoSemiBold.copyWith(color: ColorResources.white),),
                          const Icon(Icons.arrow_forward, color: ColorResources.white,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          else{
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AllImages.kitesGif),
                  fit: BoxFit.cover
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AllImages.loadingGit, color: ColorResources.white, height: 120, width: 120, fit: BoxFit.fill,),
                    Text("Processing..", style: latoSemiBold16.copyWith(color: ColorResources.white),)
                  ],
                ),
              ),
            );
          }
        });
  }
}
