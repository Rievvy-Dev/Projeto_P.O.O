import 'package:flutter/material.dart';
import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/Screens/profissional/profissional_controller.dart';
import 'package:poo_project/Screens/service/service_repository.dart';

class ServiceScreen extends StatefulWidget {
  String city;

  ServiceScreen(this.city, {super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreen();
}

class _ServiceScreen extends State<ServiceScreen> {
  ProfissionalController prestController = ProfissionalController();
  ServiceRepository controller = ServiceRepository();
  late Future<List<ModeloPrestadorServicos>> getPrestadores;

  @override
  void initState() {
    getPrestadores = controller.getPrestadores(widget.city);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<ModeloPrestadorServicos>>(
        future: getPrestadores,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, index) {
                ModeloPrestadorServicos model = snapshot.data![index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => prestController.navigatorPrestador(
                          context, model.id)),
                    ),
                  ),
                  child: Container(
                    color: Colors.grey,
                    child: ListTile(
                      title: Text(model.nome.toString()),
                      leading: const Icon(Icons.navigate_next),
                    ),
                  ),
                );
              }),
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
