
import 'package:flutter/material.dart';
import 'package:poo_project/Screens/screens_index.dart';
import 'package:poo_project/core/constants/app_size.dart';

import '../../core/constants/app_colors.dart';

class HintScreen extends StatelessWidget {
  const HintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Column(
        children: [
          Center(
            child: SizedBox(
              child: Container(
                margin: const EdgeInsets.only(top: 170),
                alignment: Alignment.topCenter,
                child: const Text(
                  'Bem Vindo!!',
                  style: TextStyle(
                      fontSize: AppSize.kVeryLargeSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          const Text(
            'Como funciona?',
            style: TextStyle(
                fontSize: AppSize.kHighSize, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            alignment: Alignment.center,
            child: const Text(
              textAlign: TextAlign.center,
              'Você escreve o que precisa e acha todos os prestadores de serviço na sua região.',
              style: TextStyle(
                fontSize: AppSize.kMediumSize,
              ),
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Screens.localization),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.kPrimaryColor),
                ),
                child: const Text('Escolher Cidade')),
          )
        ],
      ),
    );
  }
}
