import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/Screens/profissional/profissional_controller.dart';
import 'package:poo_project/core/constants/app_colors.dart';
import 'package:open_whatsapp/open_whatsapp.dart';

class ProfissionalScreen extends StatefulWidget {
  int id;
  ProfissionalScreen(this.id, {super.key});

  @override
  State<ProfissionalScreen> createState() => _ProfissionalScreenState();
}

class _ProfissionalScreenState extends State<ProfissionalScreen> {
  Future<ModeloPrestadorServicos>? prestadorModel;
  ProfissionalController controller = ProfissionalController();

  @override
  void initState() {
    prestadorModel = controller.getPrestador(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: FutureBuilder<ModeloPrestadorServicos>(
        future: prestadorModel!,
        builder: (context, snapshot) {
          ModeloPrestadorServicos model = ModeloPrestadorServicos();
          return Column(children: [
            Container(
              height: 200,
              color: AppColors.kBackgroundColor,
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  ListTile(
                    enabled: true,
                    leading: const Icon(
                      Icons.person,
                      size: 40,
                    ),
                    title: Text(model.nome.toString()),
                    subtitle: Text(
                        '${model.idEndereco!.cidade} - ${model.idEndereco!.bairro}'),
                  ),
                  const Spacer(),
                  ElevatedButton.icon(
                    onPressed: () {
                      FlutterOpenWhatsapp.sendSingleMessage(
                          '${model.idContato!.celular}', 'Mensagem do Flutter');
                    },
                    icon: const Icon(Icons.chat_bubble_outline_rounded),
                    label: const Text('Conversar'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.green),
                    ),
                  ),
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
          ]);
        },
      ),
    );
  }
}
