import 'package:bkash_clone/utill/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/provider/mobile_recharge_contact_provider.dart';
import 'data/provider/offer_provider.dart';
import 'data/provider/send_money_contact_provider.dart';
import 'data/provider/splash_provider.dart';
import 'view/screen/splash screen/splash_screen.dart';
import 'di_container.dart' as di;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => di.sl<SplashProvider>()),
        ChangeNotifierProvider<OfferProvider>(create: (change) => OfferProvider()),
        ChangeNotifierProvider<SendMoneyContactProvider>(create: (change) => SendMoneyContactProvider()),
        ChangeNotifierProvider<MobileRechargeContactProvider>(create: (change) => MobileRechargeContactProvider()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        primaryColor: ColorResources.pink
      ),
    );
  }
}

