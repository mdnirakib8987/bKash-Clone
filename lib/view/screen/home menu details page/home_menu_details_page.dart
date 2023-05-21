// ignore_for_file: must_be_immutable

import 'package:bkash_clone/data/model/response/home_menu_model.dart';
import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  HomeMenuModel homeMenuModel;
  DetailsPage({Key? key, required this.homeMenuModel}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("${widget.homeMenuModel.titleName}", style: latoSemiBold.copyWith(color: ColorResources.white),),
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
      body: widget.homeMenuModel.onTab,
    );
  }
}
