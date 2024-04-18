import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: screenHeight,
          width: screenWidth,
          color: Colors.white,
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
                data:
                    Theme.of(context).copyWith(canvasColor: const Color(0xFF30b9b2)),
                child: BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: 'Search'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart), label: 'Cart'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: 'Profile'),
                  ],
                )))
      ],
    ));
  }
}
