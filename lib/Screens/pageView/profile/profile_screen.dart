import 'package:poo_project/Screens/screens_index.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:poo_project/core/constants/app_size.dart';

class ProfileScreen extends StatefulWidget {
  final String city;

  const ProfileScreen(this.city, {super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 300,
          alignment: Alignment.center,
          color: AppColors.kPrimaryColor,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'É profissional ou empresa?',
                    style: TextStyle(
                        color: AppColors.kBackgroundColor,
                        fontSize: AppSize.kLargeSize),
                  ),
                  const Text(
                    'Receba pedidos de orçamentos no seu WhatsApp!',
                    style: TextStyle(
                        color: AppColors.kBackgroundColor,
                        fontSize: AppSize.kLargeSize),
                  ),
                  const Text(
                    'Cadastre-se e receba pedidos de orçamentos e seja encontrado por quem procura seus serviços!',
                    style: TextStyle(
                        color: AppColors.kBackgroundColor,
                        fontSize: AppSize.kHighSize),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, Screens.signUp),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (states) => (Colors.white),
                              ),
                            ),
                            child: const Text(
                              'Cadastrar',
                              style: TextStyle(color: AppColors.kPrimaryColor),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppSize.kVeryLargeSize,
                        ),
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, Screens.signIn),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (states) => (Colors.white),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(color: AppColors.kPrimaryColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Screens.localization),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) => (Colors.white),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.place_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: AppSize.kMediumSize,
                    ),
                    Text(
                      'Trocar Localização',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) => (Colors.white),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.help_outline_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: AppSize.kMediumSize,
                    ),
                    Text(
                      'Suporte & Ajuda',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) => (Colors.white),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.help_outline_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: AppSize.kMediumSize,
                    ),
                    Text(
                      'Política de Privacidade',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) => (Colors.white),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: AppSize.kMediumSize,
                    ),
                    Text(
                      'Gostou? Avalie na PlayStore',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          color: AppColors.kPrimaryColor,
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SizedBox(
                      child: Text(
                        'Icon',
                        style: TextStyle(
                            color: AppColors.kBackgroundColor, fontSize: 40),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Divulgue seu WhatsApp no Jáchei!',
                        style: TextStyle(
                            color: AppColors.kBackgroundColor,
                            fontSize: AppSize.kHighSize),
                      ),
                      const SizedBox(
                        height: AppSize.kMediumSize,
                      ),
                      const Text(
                        'Você é um profissional?',
                        style: TextStyle(
                            color: AppColors.kBackgroundColor,
                            fontSize: AppSize.kMediumSize),
                      ),
                      Text(
                        'Cadastre-se de graça e começe a divulgar seu \ntrabalho em ${widget.city}',
                        style: const TextStyle(
                            color: AppColors.kBackgroundColor,
                            fontSize: AppSize.kMediumSize),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, Screens.signUp),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => AppColors.kBackgroundColor),
                    ),
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(color: AppColors.kPrimaryColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 100,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.phone_android,
                    color: AppColors.kPrimaryColor,
                  ),
                  const Text('Já tem uma conta?'),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, Screens.signIn),
                    child: const Text('Faça seu login.'),
                  ),
                ],
              ),
              const Text('Alpha Version')
            ],
          ),
        )
      ],
    );
  }
}
