
import 'package:bkash_clone/data/model/request/splash_repo.dart';
import 'package:flutter/cupertino.dart';

class SplashProvider extends ChangeNotifier {
  final SplashRepo splashRepo;
  SplashProvider({required this.splashRepo});

  void initSharedPrefData() {
    splashRepo.initSharedData();
  }
}