import 'package:bkash_clone/data/model/request/offer_repo.dart';
import 'package:bkash_clone/data/model/response/offer_model.dart';
import 'package:flutter/cupertino.dart';

class OfferProvider with ChangeNotifier{
  OfferRepo offerRepo = OfferRepo();

  List<OfferModel> _offerList = [];
  List<OfferModel> get offerList => _offerList;

  getOfferListData() async{
    _offerList = await offerRepo.getOfferListData();
    notifyListeners();
  }
}