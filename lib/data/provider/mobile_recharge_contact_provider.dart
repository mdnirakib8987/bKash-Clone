import 'package:bkash_clone/data/model/request/mobile_recharge_contact_repo.dart';
import 'package:bkash_clone/data/model/response/mobile_recharge_contact_model.dart';
import 'package:flutter/cupertino.dart';

class MobileRechargeContactProvider with ChangeNotifier{
  MobileRechargeContactRepo mobileRechargeContactRepo = MobileRechargeContactRepo();

  List<MobileRechargeContactModel> _mobileRechargeContactList = [];
  List<MobileRechargeContactModel> get mobileRechargeContactList => _mobileRechargeContactList;

  getMobileRechargeContactListData() async{
    _mobileRechargeContactList = await mobileRechargeContactRepo.getMobileRechargeContactListData();
    notifyListeners();
  }

}