import 'package:bkash_clone/utill/color_resources.dart';
import 'package:bkash_clone/utill/style/lato_styles.dart';
import 'package:flutter/material.dart';

class DeshBoardWidget extends StatefulWidget {
  final Function(int index) onPress;
  const DeshBoardWidget({Key? key, required this.onPress}) : super(key: key);

  @override
  State<DeshBoardWidget> createState() => _DeshBoardWidgetState();
}

class _DeshBoardWidgetState extends State<DeshBoardWidget> {

  Color homeColor = ColorResources.pink;
  Color inboxColor = ColorResources.grey;

  int selectedIndex = 0;

  void _onBottomBarTapped(int index){
    setState(() {
      selectedIndex = index;

      if(selectedIndex == 0){
        homeColor = ColorResources.pink;
        inboxColor = ColorResources.grey;
      }
      else{
        homeColor = ColorResources.grey;
        inboxColor = ColorResources.pink;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ColorResources.white,
      notchMargin: 7.0,
      shape: const CircularNotchedRectangle(),
      elevation: 0,
      child: SizedBox(
        height: 70,
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                    onPressed: (){
                      widget.onPress(0);
                      _onBottomBarTapped(0);
                    },
                  child: Column(
                    children: [
                      Icon(Icons.home_filled, color: homeColor, size: 30.0,),
                      Text("Home", style: latoRegular.copyWith(color: homeColor),)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Scan QR',
                    style: TextStyle(color: ColorResources.grey),
                  ),
                ),
                MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onPressed: (){
                    widget.onPress(1);
                    _onBottomBarTapped(1);
                  },
                  child: Column(
                    children: [
                      Icon(Icons.mail_sharp, color: inboxColor, size: 30.0,),
                      Text("Inbox", style: latoRegular.copyWith(color: inboxColor),)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
