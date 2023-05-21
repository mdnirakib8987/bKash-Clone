
import 'package:bkash_clone/data/model/response/send_money_contact_model.dart';
import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:bkash_clone/view/screen/send%20money%20screen/send_money_amount_page.dart';
import 'package:flutter/material.dart';

class SendMoneyContactListWidget extends StatelessWidget {
  final List<SendMoneyContactModel> contactList;
  const SendMoneyContactListWidget({Key? key, required this.contactList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height - 195,
      width: size.width,
      child: ListView.builder(
        itemCount: contactList.length,
          itemBuilder: (BuildContext context, int index){
            final item = contactList[index];
            /// ------------->>>>>>>> Recent Contact Number <<<<<<<<<<-------------
            if(index == 0){
              return Column(
                children: [
                  const SizedBox(height: 2,),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorResources.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(AllImages.sendMoneyContactBook, height: 50,),
                        Text("Tap here to send Money for free", style: latoBold.copyWith(color: ColorResources.pink),)
                      ],
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
                      child: Text("Recent", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                    ),
                  ),
                  const SizedBox(height: 2,),
                ],
              );
            }
            /// ------------->>>>>>>> All Contact <<<<<<<<<<-------------
            else if(index == 2){
              return Column(
                children: [
                  const SizedBox(height: 4,),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorResources.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text("All Contacts", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                    ),
                  ),
                  const SizedBox(height: 2,),
                ],
              );
            }
            /// ------------->>>>>>>> All Contact Number <<<<<<<<<<-------------
            else{
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SendMoneyAmoundPage(sendMoneyContactModel: item,)));
                },
                child: Container(
                  color: ColorResources.white,
                  child: Column(
                    children: [
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
                              children: [
                                Text(item.cName, style: latoSemiBold.copyWith(color: ColorResources.black),),
                                const SizedBox(height: 5,),
                                Text(item.cNumber, style: latoLight.copyWith(fontSize: 12, color: ColorResources.black),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          }
      ),
    );
  }
}
