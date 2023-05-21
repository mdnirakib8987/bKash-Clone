
import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/view/basewidget/deshboard_widget.dart';
import 'package:flutter/material.dart';

import 'widget/home_page_widget.dart';
import 'widget/inbox_page_widget.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _deshBoardBottomScreen = <Widget>[
    HomePageWidget(),
    InboxPageWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _deshBoardBottomScreen.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Scan QR',
        elevation: 2,
        backgroundColor: ColorResources.white,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        onPressed: (){},
        child: const Icon(Icons.qr_code, color: ColorResources.pink, size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: DeshBoardWidget(onPress: _onItemTapped,),
    );
  }
}
