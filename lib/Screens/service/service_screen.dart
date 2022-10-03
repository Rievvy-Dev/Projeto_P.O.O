import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/Screens/pageView/model/modelo_categoria.dart';
import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/Screens/pageView/model/modelo_servicos_has_categorias.dart';
import 'package:poo_project/Screens/service/service_repository.dart';

class ServiceScreen extends StatefulWidget {

  String city;

  ServiceScreen(this.city,{super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreen();
}

class _ServiceScreen extends State<ServiceScreen> {
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
                return ListTile(
                  title: Text(model.nome.toString()),
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
