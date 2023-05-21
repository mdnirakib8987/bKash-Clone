import 'package:bkash_clone/data/model/request/send_money_contact_repo.dart';
import 'package:bkash_clone/data/model/response/send_money_contact_model.dart';
import 'package:flutter/cupertino.dart';

class SendMoneyContactProvider with ChangeNotifier{
  SendMoneyContactRepo sendMoneyContactRepo = SendMoneyContactRepo();

  List<SendMoneyContactModel> _sendMoneyContactList = [];
  List<SendMoneyContactModel> get sendMoneyContactList => _sendMoneyContactList;

  getSendMoneyContactListData() async{
    _sendMoneyContactList = await sendMoneyContactRepo.getSendMoneyContactListData();
    notifyListeners();
  }
}