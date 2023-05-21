
import 'package:bkash_clone/data/datasource/romote/dio/dio_client.dart';
import 'package:bkash_clone/utill/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashRepo {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;
  SplashRepo({required this.dioClient, required this.sharedPreferences});

  void initSharedData() async {
    if (!sharedPreferences.containsKey(AppConstants.cartList)) {
      sharedPreferences.setStringList(AppConstants.cartList, []);
    }
  }
}