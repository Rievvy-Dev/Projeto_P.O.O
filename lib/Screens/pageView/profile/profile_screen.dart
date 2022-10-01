import 'package:poo_project/Screens/screens_index.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:poo_project/core/constants/app_size.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

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
        Expanded(
          flex: 3,
          child: Container(
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
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 400,
            color: AppColors.kPrimaryColor,
            child: Column(
              children: [
                Row(
                  children: const [
                    Text('Icon'),
                    Text('Divulgue seu WhatsApp no Jáchei!')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
