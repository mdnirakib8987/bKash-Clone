import 'dart:async';
import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../login_screen/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late StreamSubscription<ConnectivityResult> onConnectivityChanged;

  late StreamSubscription<ConnectivityResult> _onConnectivityChanged;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ------------->>>> Splash Screen <<<<-----------------
    bool firstTime = true;
    _onConnectivityChanged = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (!firstTime) {
        bool isNotConnected = result != ConnectivityResult.wifi &&
            result != ConnectivityResult.mobile;
        isNotConnected
            ? const SizedBox()
            : ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: isNotConnected ? Colors.red : Colors.green,
          duration: Duration(seconds: isNotConnected ? 6000 : 3),
          content: Text(
            isNotConnected ? "No Connection" : "Connected",
            textAlign: TextAlign.center,
          ),
        ));
        if (!isNotConnected) {
          _route();
        }
      }
      firstTime = false;
    });

    _route();

  }

  void _route(){
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LogInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.pink,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 5,),
          Image.asset(AllImages.loadingGit, color: Colors.white, height: 160, width: 160, fit: BoxFit.fill,),
          Expanded(child: Container()),
          const SpinKitThreeBounce(
            color: Colors.white,
            size: 50.0,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 7,),
        ],
      ),
    );
  }
}


