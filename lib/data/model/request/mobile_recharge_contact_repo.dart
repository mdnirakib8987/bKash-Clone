import 'package:bkash_clone/data/model/response/mobile_recharge_contact_model.dart';

class MobileRechargeContactRepo{
  List<MobileRechargeContactModel> mobileRechargeContactList = [
    MobileRechargeContactModel(cId: "", cType: "", cName: "", cNumber: ""),
    MobileRechargeContactModel(cId: "0", cType: "Recent", cName: "FCI Rakib Friend", cNumber: "01875892642"),
    MobileRechargeContactModel(cId: "", cType: "", cName: "", cNumber: ""),
    MobileRechargeContactModel(cId: "1", cType: "All Contacts", cName: "Abbu", cNumber: "01812757531"),
    MobileRechargeContactModel(cId: "", cType: "", cName: "", cNumber: ""),
    MobileRechargeContactModel(cId: "2", cType: "All Contacts", cName: "Abbu Airtel", cNumber: "01619523314"),
    MobileRechargeContactModel(cId: "3", cType: "All Contacts", cName: "Ammu", cNumber: "01831786492"),
    MobileRechargeContactModel(cId: "4", cType: "All Contacts", cName: "Apu", cNumber: "01856311074"),
    MobileRechargeContactModel(cId: "5", cType: "All Contacts", cName: "Babu Vaiya", cNumber: "01821588591"),
    MobileRechargeContactModel(cId: "6", cType: "All Contacts", cName: "Emon", cNumber: "01858705318"),
    MobileRechargeContactModel(cId: "7", cType: "All Contacts", cName: "FCI Kamrul Friend", cNumber: "01866457307"),
    MobileRechargeContactModel(cId: "8", cType: "All Contacts", cName: "FCI Rakib Friend", cNumber: "01614197545"),
    MobileRechargeContactModel(cId: "8", cType: "All Contacts", cName: "FCI Robin Friend", cNumber: "01747606057"),
    MobileRechargeContactModel(cId: "9", cType: "All Contacts", cName: "FCI Kawsar Vaiya", cNumber: "01812977112"),
    MobileRechargeContactModel(cId: "10", cType: "All Contacts", cName: "Sakib", cNumber: "01858388900"),
  ];

  Future<List<MobileRechargeContactModel>> getMobileRechargeContactListData() async{
    return mobileRechargeContactList;
  }
}