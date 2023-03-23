import 'package:flutter/material.dart';

List<Widget> formatCnpjData(Map<String, dynamic> data) {
  List<Widget> result = [];

  result.add(
    Text(
      'Dados da empresa',
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  result.add(
    SizedBox(
      height: 16.0,
    ),
  );

  result.add(
    Text(
      'Nome: ${data['nome']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  result.add(
    Text(
      'CNPJ: ${data['cnpj']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  result.add(
    Text(
      'Data de abertura: ${data['abertura']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  result.add(
    Text(
      'Situação: ${data['situacao']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  result.add(
    SizedBox(height: 16.0),
  );

  result.add(
    Text(
      'Endereço',
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  result.add(
    SizedBox(
      height: 16.0,
    ),
  );

  result.add(
    Text(
      'CEP: ${data['cep']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  result.add(
    Text(
      'Logradouro: ${data['logradouro']}',
      style: TextStyle(fontSize: 18.0),
    ),
  );

  result.add(
    Text(
      'Número: ${data['numero']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  result.add(
    Text(
      'Bairro: ${data['bairro']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  result.add(
    Text(
      'Cidade: ${data['municipio']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  result.add(
    Text(
      'Estado: ${data['uf']}',
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  return result;
}
