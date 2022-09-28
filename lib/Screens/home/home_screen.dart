import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/Screens/localization/localization_controller.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:poo_project/core/constants/app_size.dart';

class HomeScreen extends StatefulWidget {
  String city;

  HomeScreen(this.city);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
              ))
        ],
      ),
      backgroundColor: AppColors.kBackgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: AppSize.kHugeSize,
                    bottom: AppSize.kHugeSize,
                    left: AppSize.kLargeSize,
                    right: AppSize.kLargeSize),
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
              Text('O que você precisa em ${widget.city}'),
            ],
          )
        ],
      ),
    );
  }
}
