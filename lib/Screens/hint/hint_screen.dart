import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/constants/app_colors.dart';

class HintScreen extends StatelessWidget {
  const HintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [ 
          Text('Bem Vindo!!'),
          Spacer(),
          Center(
            child: Text('Olá'),
          ),
          Spacer()
        ],
      ),
    );
  }
}
