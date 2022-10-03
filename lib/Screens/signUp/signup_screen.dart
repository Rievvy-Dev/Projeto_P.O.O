import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:poo_project/Screens/signUp/signup_controller.dart';
import 'package:poo_project/core/constants/app_colors.dart';

import '../../core/constants/app_size.dart';
import '../../core/forms/appbar_sign.dart';
import '../screens_index.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSign(context),
      backgroundColor: AppColors.kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(
                  left: AppSize.kHighSize,
                  right: AppSize.kHighSize,
                  top: AppSize.kHugeSize),
              children: [
                TextHighlight(
                  text: 'Divulgue seu\nWhatsApp no Jáchei!',
                  words: SignUpController.changeWordSign(),
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.kHugeSize),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontSize: AppSize.kHugeSize),
                  decoration: const InputDecoration(

                    label: Text(
                      'DDD + Número',

                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: AppSize.kHighSize,
                        height: 0.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Qual o nome que será divulgado?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.kHugeSize),
                ),
                TextFormField(
                  controller: nameController,
                  style: const TextStyle(fontSize: AppSize.kHugeSize),
                  decoration: const InputDecoration(
                    label: Text(
                      'Seu Nome ou Empresa',
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: AppSize.kHighSize,
                        height: 0.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Escolha uma Senha',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.kHugeSize),
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: AppSize.kHugeSize),
                  decoration: const InputDecoration(
                    label: Text(
                      'Senha',
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: AppSize.kHighSize,
                        height: 0.5,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Já é cadastrado?'),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        Screens.signIn,
                      ),
                      child: const Text(
                        'Fazer Login',
                        style: TextStyle(color: AppColors.kPrimaryColor),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.all(AppSize.kHighSize),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => AppColors.kBackgroundColor),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.subdirectory_arrow_left,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Voltar',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      ElevatedButton(
                        onPressed: () {
                          SignUpController.signUp(
                            phoneController.text,
                            nameController.text,
                            passwordController.text,
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('Cadastrar'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.subdirectory_arrow_right),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
