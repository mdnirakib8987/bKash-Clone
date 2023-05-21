import 'package:bkash_clone/data/provider/send_money_contact_provider.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widget/send_money_contact_list_widget.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {

  TextEditingController sendMoneyController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<SendMoneyContactProvider>(context, listen: false).getSendMoneyContactListData();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 14),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              /// ------------->>>>>>>> Phone Number Search <<<<<<<<<<-------------
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
                      Text("To", style: latoRegular.copyWith(fontSize: 12, color: ColorResources.black),),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: sendMoneyController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: "Enter name or number",
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

                              },
                              child: const Icon(Icons.arrow_forward, color: ColorResources.grey,))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Consumer<SendMoneyContactProvider>(builder: (context, contactItem, child){
                return SendMoneyContactListWidget(contactList: contactItem.sendMoneyContactList,);
              })
            ],
          ),
        ),
      ),
    );
  }
}
