import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/Screens/pageView/model/modelo_categoria.dart';
import 'package:poo_project/Screens/pageView/model/modelo_servicos_has_categorias.dart';

import 'category_repository.dart';

class CategoryScreen extends StatefulWidget {
  // /servicos_has_categoria.
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  CategoryRepository controller = CategoryRepository();
  late Future<List<ModeloServicosHasCategorias>> getServices;

  @override
  void initState() {
    super.initState();
    getServices = controller.getServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<ModeloServicosHasCategorias>>(
        future: getServices,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, index) {
                ModeloServicosHasCategorias model = snapshot.data![index];
                return ListTile(
                  title: Text(model.idServicos!.nome.toString()),
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
