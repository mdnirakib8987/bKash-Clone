import 'package:bkash_clone/data/model/response/offer_model.dart';
import 'package:bkash_clone/utill/all_images.dart';

class OfferRepo{
  List<OfferModel> offerList = [
    OfferModel(AllImages.offer1, "Mobile Recharge", "BDT 10 Cashback"),
    OfferModel(AllImages.offer2, "25Tk Discount", "Lakeshore Banani"),
    OfferModel(AllImages.offer3, "Mobile Recharge", "BDT 16 Cashback"),
    OfferModel(AllImages.offer4, "bKash Payment", "Internet Cashback"),
  ];

  Future<List<OfferModel>> getOfferListData() async{
    return offerList;
  }
}