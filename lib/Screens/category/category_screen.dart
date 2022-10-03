import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poo_project/Screens/category/category_controller.dart';
import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/Screens/pageView/model/modelo_servicos_has_categorias.dart';

import 'category_repository.dart';

class CategoryScreen extends StatefulWidget {
  final String city;
  final String categoria;
  const CategoryScreen(this.categoria, this.city, {super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  CategoryController controller = CategoryController();
  CategoryRepository repository = CategoryRepository();
  Future<List<ModeloServicosHasCategorias>>? getServices;
  ModeloPrestadorServicos prestador = ModeloPrestadorServicos();

  @override
  void initState() {
    getServices = repository.getServices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<ModeloServicosHasCategorias>>(
        future: getServices!,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, index) {
                ModeloServicosHasCategorias model = snapshot.data![index];
                return GestureDetector(
                  onTap: () =>
                      {controller.navigatorPrestadores(context, widget.city)},
                  child: Container(
                    color: Colors.grey,
                    child: ListTile(
                      title: Text(model.idServicos!.nome.toString()),
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
