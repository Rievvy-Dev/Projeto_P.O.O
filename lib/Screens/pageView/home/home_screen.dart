import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Column(
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
          Text(
            'Procurando o que em ${widget.city} hoje?',
            style: const TextStyle(),
          ),
        ],
      ),
    );
  }
}
