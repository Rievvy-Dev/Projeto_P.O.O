import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/Screens/pageView/model/modelo_usuario.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:open_whatsapp/open_whatsapp.dart';

class ProfissionalScreen extends StatefulWidget {
  const ProfissionalScreen({super.key});

  @override
  State<ProfissionalScreen> createState() => _ProfissionalScreenState();
}

class _ProfissionalScreenState extends State<ProfissionalScreen> {
  ModeloUsuario? userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: ListView(children: [
        Container(
          height: 200,
          color: AppColors.kBackgroundColor,
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              const ListTile(
                enabled: true,
                leading: Icon(
                  Icons.person,
                  size: 40,
                ),
                title: Text('Nome?'),
                subtitle: Text('Cidade? - Bairro?'),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  FlutterOpenWhatsapp.sendSingleMessage(
                      '+5587999013100', 'Mensagem do Flutter');
                },
                icon: const Icon(Icons.chat_bubble_outline_rounded),
                label: const Text('Conversar'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.green),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 200,
          color: AppColors.kBackgroundColor,
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [],
          ),
        ),
        Container(
          height: 200,
          color: AppColors.kBackgroundColor,
          child: Column(
            children: [],
          ),
        ),
      ]),
    );
  }
}
