// ignore_for_file: must_be_immutable
import 'package:bkash_clone/data/model/response/home_menu_model.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  HomeMenuModel homeMenuModel;
  MenuWidget({Key? key, required this.homeMenuModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 5,
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Image.asset("${homeMenuModel.image}", height: 50, width: 80),
          Text("${homeMenuModel.titleName}", style: latoRegular.copyWith(color: Colors.black45, fontSize: 10)),
        ],
      ),
    );
  }
}
