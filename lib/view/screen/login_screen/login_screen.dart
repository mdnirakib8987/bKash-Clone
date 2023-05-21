import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:bkash_clone/view/screen/my%20home%20screen/my_home_screen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  TextEditingController bKashPinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorResources.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: ColorResources.pink,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1, color: ColorResources.pink)
              ),
              child: Center(child: Text("বাংলা", style: latoRegular.copyWith(color: ColorResources.pink, fontSize: 15),),),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AllImages.bkashLogo, height: 65, width: 65,),
                    const Icon(Icons.qr_code_2_sharp, color: ColorResources.pink, size: 70,),
                  ],
                ),
                const SizedBox(height: 20,),
                Text("Log In", style: latoBold24.copyWith(color: Colors.black),),
                Text("to your bKash account", style: latoLight24.copyWith(color: Colors.black),),
                const SizedBox(height: 30,),
                Text("Account Number", style: latoSemiBold.copyWith(color: ColorResources.greyShado600),),
                const SizedBox(height: 10,),
                Text("+88  01858949651", style: latoBold18.copyWith(color: Colors.black),),
                const SizedBox(height: 15,),
                Divider(height: 1, color: Colors.grey.shade200,),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("bKash PIN", style: latoSemiBold.copyWith(color: ColorResources.greyShado600),),
                    Text("Forgot PIN?", style: latoSemiBold.copyWith(color: ColorResources.pink),),
                  ],
                ),
                TextFormField(
                  controller: bKashPinController,
                  keyboardType: TextInputType.phone,
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter bKash PIN",
                    hintStyle: latoSemiBold.copyWith(color: ColorResources.grey),
                    border: InputBorder.none,
                  ),
                  cursorColor: ColorResources.pink,
                  // cursorHeight: 50,
                ),
                Divider(height: 1, color: Colors.grey.shade200,),
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width,
            color: bKashPinController.text.length > 4 ? ColorResources.pink : ColorResources.grey,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Next", style: latoSemiBold16.copyWith(color: ColorResources.white),),
                  InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomeScreen()));
                    },
                      child: const Icon(Icons.arrow_forward, color: Colors.white,))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
