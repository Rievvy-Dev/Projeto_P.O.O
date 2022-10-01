import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:poo_project/Screens/pageView/home/home_screen_controller.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:poo_project/core/constants/app_size.dart';

class HomeScreen extends StatefulWidget {
  final String city;

  const HomeScreen(this.city, {super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = HomeScreenController(widget.city);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
                top: 50, left: AppSize.kHighSize, right: AppSize.kHighSize),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.kPrimaryColor,
                          size: AppSize.kLargeSize,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        hintText: 'O que você procura?',
                        fillColor: Colors.black),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(AppSize.kHighSize),
            child: TextHighlight(
              text: 'Procurando o que em ${widget.city} \nhoje?',
              words: controller.changeWord(),
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.kLargeSize),
            ),
          ),
        ],
      ),
    );
  }
}
