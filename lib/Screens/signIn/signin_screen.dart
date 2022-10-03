import 'package:flutter/material.dart';
import 'package:poo_project/core/constants/app_colors.dart';

import '../../core/forms/appbar_sign.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSign(context),
      backgroundColor: AppColors.kBackgroundColor,
    );
  }
}
