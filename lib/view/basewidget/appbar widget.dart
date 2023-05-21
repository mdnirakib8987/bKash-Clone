import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {

  final GlobalKey<_AppBarWidgetState> appBarKey = GlobalKey<_AppBarWidgetState>();
  bool _isAnimation = false;
  bool _isBalanceShown = false;
  bool _isBalance = true;

  @override
  Widget build(BuildContext context) {

    /// Animate
    void animate() async {
      _isAnimation = true;
      _isBalance = false;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 800),
              () => setState(() => _isBalanceShown = true));
      await Future.delayed(const Duration(seconds: 3),
              () => setState(() => _isBalanceShown = false));
      await Future.delayed(const Duration(milliseconds: 200),
              () => setState(() => _isAnimation = false));
      await Future.delayed(const Duration(milliseconds: 800),
              () => setState(() => _isBalance = true));
    }

    return AppBar(
      key: appBarKey,
      backgroundColor: ColorResources.pink,
      elevation: 0,
      leading: Container(),
      flexibleSpace: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const Padding(
            //   padding: EdgeInsets.only(top: 15.0, left: 12.0),
            //   child: Icon(Icons.qr_code_scanner_outlined, size: 50, color: ColorResources.white,),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 12.0, bottom: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                  child: Image.asset(AllImages.rakibProfile, height: 50, width: 50, fit: BoxFit.cover,)),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// User Name
                Text("Md.Nazrul Islam Rakib", style: latoSemiBold.copyWith(color: ColorResources.white,),),
                const SizedBox(height: 5,),
                /// Button
                InkWell(
                  onTap: animate,
                  child: Container(
                    height: 28,
                    width: 160,
                    decoration: BoxDecoration(
                        color: ColorResources.white,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ///Amount
                        AnimatedOpacity(
                          opacity: _isBalanceShown ? 1 : 0,
                          duration: const Duration(milliseconds: 500),
                          child: Text('৳ 9500.25', style: latoBold.copyWith(color: Colors.pink),),
                        ),
                        ///Balance
                        AnimatedOpacity(
                          opacity: _isBalance ? 1 : 0,
                          duration: const Duration(milliseconds: 300),
                          child: Text('Tab for balance', style: latoBold.copyWith(color: Colors.pink),),
                        ),
                        ///Circle
                        AnimatedPositioned(
                            left: _isAnimation == false ? 5 : 135,
                            duration: const Duration(milliseconds: 1100),
                            curve: Curves.fastOutSlowIn,
                            child: Container(
                              height: 20,
                              width: 20,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorResources.pink,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: FittedBox(
                                child: Text('৳', style: latoRegular16.copyWith(color: Colors.white), textAlign: TextAlign.center,),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0, right: 12.0),
          child: InkWell(
            onTap: (){},
            child: SizedBox(
                width: 34, height: 34, child: Image.asset(AllImages.rewards)),),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 16.0),
              child: InkWell(
                onTap: (){},
                child: SizedBox(
                    width: 34, height: 34, child: Image.asset(AllImages.bkashSplashLogo)),),
            ),
            Positioned(
              top: 16,
              right: 13,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1, color: ColorResources.white)
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
