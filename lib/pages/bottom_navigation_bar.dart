import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              child: ImageIcon(
                AssetImage(
                  "assets/images/home.png",
                ),
                color: Colors.white,
              ),
            ),
            label: "home"),
        BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              child: ImageIcon(
                AssetImage(
                  "assets/images/search.png",
                ),
                color: Colors.white,
              ),
            ),
            label: "search"),
        BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              child: ImageIcon(
                AssetImage(
                  "assets/images/add.png",
                ),
                color: Colors.white,
              ),
            ),
            label: "add"),
        BottomNavigationBarItem(
            icon: Container(
              width: 41,
              height: 41,
              child: ImageIcon(
                AssetImage(
                  "assets/images/reels.png",
                ),
                color: Colors.white,
              ),
            ),
            label: "reels"),
        BottomNavigationBarItem(
            icon: Container(
                width: 28,
                height: 28,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pps.whatsapp.net/v/t61.24694-24/300950928_183454744095172_2617576791638701973_n.jpg?ccb=11-4&oh=01_AdTdrMH5-eHfm7aX3rCMwMtEddKrVFwLIfS9tNsQwnT7eQ&oe=643AC05E"),
                )),
            label: "reels"),
      ],
    );
  }
}
