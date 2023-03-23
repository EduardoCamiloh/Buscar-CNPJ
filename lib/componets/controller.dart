import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassCnpj extends GetxController {
  final TextEditingController cnpjController = TextEditingController();
  Map<String, dynamic> cnpjData = {};

  Future<void> searchCnpj(context) async {
    final cnpj = cnpjController.text
        .replaceAll('.', '')
        .replaceAll('/', '')
        .replaceAll('-', '');

    final response = await http.get(
      Uri.parse(
        'https://www.receitaws.com.br/v1/cnpj/$cnpj',
      ),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = json.decode(
        response.body,
      );

      cnpjData = Map.fromIterable(
        responseData.keys.where(
          (key) => !key.contains('@'),
        ),
        value: (key) => responseData[key],
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'Erro ao buscar CNPJ',
          ),
          content: Text(
            'Verifique se o CNPJ foi digitado corretamente e tente novamente.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'OK',
              ),
            ),
          ],
        ),
      );
    }

    update();
  }

  void clearData() {
    cnpjData.clear();
    cnpjController.clear();
    update();
  }
}
