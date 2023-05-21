
import 'package:bkash_clone/data/model/response/home_menu_model.dart';
import 'package:bkash_clone/data/provider/offer_provider.dart';
import 'package:bkash_clone/utill/all_images.dart';
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:bkash_clone/view/basewidget/appbar%20widget.dart';
import 'package:bkash_clone/view/screen/home%20menu%20details%20page/home_menu_details_page.dart';
import 'package:bkash_clone/view/screen/mobile%20recharge/mobile_recharge_screen.dart';
import 'package:bkash_clone/view/screen/send%20money%20screen/send_money_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'menu_widget.dart';
import 'offer_menu_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {

  bool isClick = true;

  List<HomeMenuModel> homeMenuList = [
    /// Top Menu
    HomeMenuModel(titleName: "Send Money", image: AllImages.sentMoney, onTab: const SendMoneyScreen()),
    HomeMenuModel(titleName: "Mobile Recharge", image: AllImages.mobileRecharge, onTab: const MobileRechargeScreen()),
    HomeMenuModel(titleName: "Cash Out", image: AllImages.cashOut, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Make Money", image: AllImages.makeMoney, onTab: const Center(child: Text(AppText.placeholder))),

    HomeMenuModel(titleName: "Add Money", image: AllImages.addMoney, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Pay Bil", image: AllImages.payBill, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Saving", image: AllImages.saving, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Loan", image: AllImages.loan, onTab: const Center(child: Text(AppText.placeholder))),

    HomeMenuModel(titleName: "bKash to Bank", image: AllImages.bKashToBank, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Remittance", image: AllImages.remittance, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Education Fee", image: AllImages.educationFee, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Microfinance", image: AllImages.microfinance, onTab: const Center(child: Text(AppText.placeholder))),

    HomeMenuModel(titleName: "BINIMOY", image: AllImages.binimoy, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Bangla QR", image: AllImages.banglaQr, onTab: const Center(child: Text(AppText.placeholder))),

  ];

  List<HomeMenuModel> myBKashList = [
    /// Top Menu
    HomeMenuModel(titleName: "My Offers", image: AllImages.myOffer, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Priyo Numbers", image: AllImages.priyoNumber, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Saved Bills", image: AllImages.savedBills, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "01612936282", image: AllImages.mobileRecharge, onTab: const Center(child: Text(AppText.placeholder))),

    HomeMenuModel(titleName: "01819945948", image: AllImages.makeMoney, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "FCI Rakib Friend", image: AllImages.mobileRecharge, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Saving", image: AllImages.savedBills, onTab: const Center(child: Text(AppText.placeholder))),

  ];

  List<HomeMenuModel> suggestions = [
    /// Top Menu
    HomeMenuModel(titleName: "Rabbithole", image: AllImages.rabbithole, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "GameStar", image: AllImages.gameStar, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "bdjobs", image: AllImages.bdJobs, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Hanif Toll", image: AllImages.hanifToll, onTab: const Center(child: Text(AppText.placeholder))),

    HomeMenuModel(titleName: "Shongjog", image: AllImages.shonJog, onTab: const Center(child: Text(AppText.placeholder))),
    // HomeMenuModel(titleName: "Bangladesh Railway", image: AllImages.bangladeshRailway, onTab: (){}),
    HomeMenuModel(titleName: "Caretutors", image: AllImages.careTutors, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "10 Minute School", image: AllImages.tenMinutsSchool, onTab: const Center(child: Text(AppText.placeholder))),

    HomeMenuModel(titleName: "bd News24", image: AllImages.bdNews24, onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(titleName: "Bikroy", image: AllImages.bikroy, onTab: const Center(child: Text(AppText.placeholder))),

  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  List imageList = [
    {'id': 1, 'image_path': "assets/images/slider1.jpg"},
    {'id': 2, 'image_path': "assets/images/Slider2.jpg"},
    {'id': 3, 'image_path': "assets/images/slider3.png"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<OfferProvider>(context, listen: false).getOfferListData();
  }
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Stack(
              children: [
                Container(
                  height: isClick ? 224 : 375,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: ColorResources.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 0),
                        blurRadius: 4,
                        spreadRadius: 0,
                      )
                    ],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                  ),
                  child: GridView.builder(
                    itemCount: isClick ? 8 : 14,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisExtent: 80,
                      ),
                      itemBuilder: (BuildContext context, int index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(homeMenuModel: homeMenuList[index],)));
                          },
                            child: MenuWidget(homeMenuModel: homeMenuList[index]));
                      })
                ),
                Positioned(
                  bottom: 15,
                  left: size.width / 2.5,
                  right: size.width / 2.5,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: ColorResources.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: (){
                        isClick = !isClick;
                        setState(() {

                        });
                      },
                      child: isClick
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("See More", style: latoSemiBold.copyWith(color: ColorResources.pink, fontSize: 10),),
                          const Icon(Icons.keyboard_arrow_down_rounded, color: ColorResources.pink,)
                        ],
                      )
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Close", style: latoSemiBold.copyWith(color: ColorResources.pink, fontSize: 10),),
                          const Icon(Icons.keyboard_arrow_up, color: ColorResources.pink,)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            /// ------------->>>>>>>>> My bKash <<<<<<<<----------------
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 110,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 0.6, color: Colors.grey.shade400),
                  color: ColorResources.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My bKash", style: latoRegular.copyWith(fontSize: 10, color: ColorResources.black),),
                          Text("See All", style: latoRegular.copyWith(fontSize: 10, color: ColorResources.pink),),
                        ],
                      ),
                    ),
                    Divider(height: 0.6, color: Colors.grey.shade400),
                    SizedBox(
                      height: 80,
                      width: size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: myBKashList.length,
                          itemBuilder: (BuildContext context, int index){
                          return MenuWidget(homeMenuModel: myBKashList[index]);
                          }),
                    )
                  ],
                ),
              ),
            ),
            /// ------------->>>>>>>>> Carousel Slider <<<<<<<<----------------
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: InkWell(
                onTap: (){
                  // print(currentIndex);
                },
                child: SizedBox(
                  height: 150,
                  width: size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: CarouselSlider(
                        items: imageList.map(
                              (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ).toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason){
                              setState(() {
                                currentIndex = index;
                              });
                            }
                        )),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry){
                // print(entry);
                // print(entry.key);
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key? 7 : 7,
                    height: 7,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? ColorResources.pink : ColorResources.grey
                    ),
                  ),
                );
              }).toList(),
            ),
            /// ------------->>>>>>>>> Suggestions <<<<<<<<----------------
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 110,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 0.6, color: Colors.grey.shade400),
                  color: ColorResources.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Suggestions", style: latoRegular.copyWith(fontSize: 10, color: ColorResources.black),),
                          Text("See All", style: latoRegular.copyWith(fontSize: 10, color: ColorResources.pink),),
                        ],
                      ),
                    ),
                    Divider(height: 0.6, color: Colors.grey.shade400),
                    SizedBox(
                      height: 80,
                      width: size.width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: suggestions.length,
                          itemBuilder: (BuildContext context, int index){
                            return MenuWidget(homeMenuModel: suggestions[index]);
                          }),
                    )
                  ],
                ),
              ),
            ),
            /// ------------->>>>>>>>> Offers <<<<<<<<----------------
            Consumer<OfferProvider>(builder: (context, offerItem, child){
              return Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: Container(
                  height: 190,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(width: 0.6, color: Colors.grey.shade400),
                    color: ColorResources.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Offers", style: latoRegular.copyWith(fontSize: 10, color: ColorResources.black),),
                            Text("See All", style: latoRegular.copyWith(fontSize: 10, color: ColorResources.pink),),
                          ],
                        ),
                      ),
                      Divider(height: 0.6, color: Colors.grey.shade400),
                      SizedBox(
                        height: 160,
                        width: size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: offerItem.offerList.length,
                            itemBuilder: (BuildContext context, int index){
                              return OfferMenuWidget(offerModel: offerItem.offerList[index],);
                            }),
                      )
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class AppText {
  static const String placeholder = "Not implemented! Check Send money.";
}