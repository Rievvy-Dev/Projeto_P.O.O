import 'package:flutter/material.dart';
import 'package:poo_project/Screens/localization/localization_controller.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:poo_project/core/constants/app_size.dart';

class LocalizationScreen extends StatefulWidget {
  const LocalizationScreen({super.key});

  @override
  State<LocalizationScreen> createState() => _LocalizationScreenState();
}

class _LocalizationScreenState extends State<LocalizationScreen> {
  double? latitude;
  double? longitude;

  void saveCity() {
    setState(() {
      LocalizationController.takePosition(context).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarOpacity: 1.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              color: AppColors.kBackgroundColor,
              alignment: Alignment.center,
              padding: EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/localization.png',
                    alignment: Alignment.center,
                  ),
                  const Text('Minha Localização',
                      style: TextStyle(
                          fontSize: AppSize.kLargeSize,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    'Onde você está?',
                    style: TextStyle(fontSize: AppSize.kHighSize),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      left: AppSize.kLargeSize, right: AppSize.kLargeSize),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        hintText: 'Procurar Endereço',
                        fillColor: Colors.black),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: AppSize.kLargeSize),
                  child: TextButton.icon(
                      onPressed: () {
                        saveCity();
                      },
                      style: const ButtonStyle(),
                      icon: const Icon(Icons.gps_fixed),
                      label: const Text(
                        'Usar Localização do GPS',
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
