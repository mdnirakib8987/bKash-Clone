import 'package:bkash_clone/data/model/response/mobile_recharge_contact_model.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

import 'mobile_recharge_button_sheet.dart';

class MobileRechargeContactListWidget extends StatefulWidget {
  final List<MobileRechargeContactModel> contactList;
  const MobileRechargeContactListWidget({Key? key, required this.contactList}) : super(key: key);

  @override
  State<MobileRechargeContactListWidget> createState() => _MobileRechargeContactListWidgetState();
}

class _MobileRechargeContactListWidgetState extends State<MobileRechargeContactListWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height - 195,
      width: size.width,
      child: ListView.builder(
          itemCount: widget.contactList.length,
          itemBuilder: (BuildContext context, int index){
            final item = widget.contactList[index];
            /// ------------->>>>>>>> Recent Contact Number <<<<<<<<<<-------------
            if(index == 0){
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
                      child: Text("My Account", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
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
                      child: Text("Recent", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                    ),
                  ),
                  const SizedBox(height: 2,),
                ],
              );
            }
            else if(index == 4){
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
                  const SizedBox(height: 2,)
                ],
              );
            }
            /// ------------->>>>>>>> All Contact Number <<<<<<<<<<-------------
            else{
              return InkWell(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (context){
                        return const MobileRechargeButtonSheet();
                      });
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
