import 'package:flutter/material.dart';
import 'package:poo_project/Screens/pageView/home/home_screen.dart';
import 'package:poo_project/Screens/pageView/search/search_screen.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:poo_project/Screens/pageView/profile/profile_screen.dart';

class PageViewController extends StatefulWidget {
  final String city;

  const PageViewController(this.city, {super.key});

  @override
  State<PageViewController> createState() => _PageViewControllerState();
}

class _PageViewControllerState extends State<PageViewController> {
  final PageController pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => setState(() {
          index = value;
        }),
        children: [
          HomeScreen(widget.city),
          const SearchScreen(),
          ProfileScreen(widget.city),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => setState(() {
          index = value;
          pageController.animateToPage(value,
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear);
        }),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Buscar',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
