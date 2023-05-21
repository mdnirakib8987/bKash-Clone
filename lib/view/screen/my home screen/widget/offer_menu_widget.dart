// ignore_for_file: must_be_immutable

import 'package:bkash_clone/data/model/response/offer_model.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

class OfferMenuWidget extends StatefulWidget {
  OfferModel offerModel;
  OfferMenuWidget({Key? key, required this.offerModel}) : super(key: key);

  @override
  State<OfferMenuWidget> createState() => _OfferMenuWidgetState();
}

class _OfferMenuWidgetState extends State<OfferMenuWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 4, top: 8, bottom: 8, right: 4),
      child: Container(
        height: 160,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 0.6, color: Colors.grey.shade400)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(4), bottomRight: Radius.circular(4)),
                child: Image.asset("${widget.offerModel.image}", height: 100, width: size.width, fit: BoxFit.fill,)),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${widget.offerModel.titleName}", style: latoSemiBold.copyWith(color: ColorResources.black),),
                  const SizedBox(height: 4,),
                  Text("${widget.offerModel.subName}", style: latoRegular.copyWith(fontSize: 10, color: ColorResources.grey),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
