import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/core/constants/app_colors.dart';

import '../../core/forms/appbar_sign.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSign(),
      backgroundColor: AppColors.kBackgroundColor,
    );
  }
}
