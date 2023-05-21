import 'package:bkash_clone/data/model/response/send_money_contact_model.dart';

class SendMoneyContactRepo{
  List<SendMoneyContactModel> sendMoneyContactList = [
    SendMoneyContactModel(cId: "", cType: "", cName: "", cNumber: ""),
    SendMoneyContactModel(cId: "0", cType: "Recent", cName: "FCI Rakib Friend", cNumber: "01875892642"),
    SendMoneyContactModel(cId: "", cType: "", cName: "", cNumber: ""),
    SendMoneyContactModel(cId: "1", cType: "All Contacts", cName: "Abbu", cNumber: "01812757531"),
    SendMoneyContactModel(cId: "2", cType: "All Contacts", cName: "Abbu Airtel", cNumber: "01619523314"),
    SendMoneyContactModel(cId: "3", cType: "All Contacts", cName: "Ammu", cNumber: "01831786492"),
    SendMoneyContactModel(cId: "4", cType: "All Contacts", cName: "Apu", cNumber: "01856311074"),
    SendMoneyContactModel(cId: "5", cType: "All Contacts", cName: "Babu Vaiya", cNumber: "01821588591"),
    SendMoneyContactModel(cId: "6", cType: "All Contacts", cName: "Emon", cNumber: "01858705318"),
    SendMoneyContactModel(cId: "7", cType: "All Contacts", cName: "FCI Kamrul Friend", cNumber: "01866457307"),
    SendMoneyContactModel(cId: "8", cType: "All Contacts", cName: "FCI Rakib Friend", cNumber: "01614197545"),
    SendMoneyContactModel(cId: "8", cType: "All Contacts", cName: "FCI Robin Friend", cNumber: "01747606057"),
    SendMoneyContactModel(cId: "9", cType: "All Contacts", cName: "FCI Kawsar Vaiya", cNumber: "01812977112"),
    SendMoneyContactModel(cId: "10", cType: "All Contacts", cName: "Sakib", cNumber: "01858388900"),
  ];

  Future<List<SendMoneyContactModel>> getSendMoneyContactListData() async{
    return sendMoneyContactList;
  }
}