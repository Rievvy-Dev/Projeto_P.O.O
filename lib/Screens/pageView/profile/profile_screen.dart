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
                  const Text('É profissional ou empresa?'),
                  const Text('Receba pedidos de orçamentos no seu WhatsApp!'),
                  const Text(
                      'Cadastre-se e receba pedidos de orçamentos e seja encontrado por quem procura seus serviços!'),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Cadastrar'),
                        ),
                        const SizedBox(
                          width: AppSize.kVeryLargeSize,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login'),
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
          height: 400,
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
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Divulgue seu WhatsApp no Jáchei!'),
                        const Text('Você é um profissional?'),
                        Text(
                          'Cadastre-se de graça e começe a divulgar seu trabalho \nem ${widget.city}',
                        )
                      ],
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Cadastrar'),
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
                    onPressed: () {},
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
