import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'class_list.dart';
import '../componets/controller.dart';

class CnpjPage extends StatelessWidget {
  late final controller = Get.put(
    ClassCnpj(),
  );

  CnpjPage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Buscar CNPJ',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GetBuilder<ClassCnpj>(
              init: controller,
              builder: (_) {
                return TextField(
                  controller: controller.cnpjController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Digite o CNPJ',
                  ),
                );
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () => controller.searchCnpj(
                context,
              ),
              child: Text(
                'Pesquisar',
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            GetBuilder<ClassCnpj>(
              init: controller,
              builder: (_) {
                if (controller.cnpjData.isNotEmpty) {
                  return Expanded(
                    child: ListView(
                      children: formatCnpjData(
                        controller.cnpjData,
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
