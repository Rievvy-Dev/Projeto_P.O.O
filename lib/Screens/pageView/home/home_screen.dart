import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:poo_project/Screens/category/category_screen.dart';
import 'package:poo_project/Screens/pageView/home/home_screen_controller.dart';
import 'package:poo_project/Screens/profissional/profissional_screen.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:poo_project/core/constants/app_size.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 50, left: AppSize.kHighSize, right: AppSize.kHighSize),
                child: Row(
                  children: const [
                    Expanded(
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
                      fontSize: AppSize.kHugeSize),
                ),
              ),
              const SizedBox(
                height: AppSize.kLargeSize,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 100,
                  autoPlay: true,
                  disableCenter: true,
                  enableInfiniteScroll: true,
                ),
                items: [
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 10),
                          height: 60,
                          width: double.infinity,
                          color: Colors.grey.withOpacity(0.6),
                          child: const Text(
                            'Animais de Estimação',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          height: 60,
                          width: double.infinity,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CategoryScreen(),
                            ),
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            height: 60,
                            width: double.infinity,
                            color: Colors.grey.withOpacity(0.6),
                            alignment: Alignment.center,
                            child: Text('Eventos'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
