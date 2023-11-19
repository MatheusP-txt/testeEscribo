import 'package:desafio/desafio.dart';
import 'dart:io';

void main() {
  bool sair = false;

  while (!sair) {
    print("Escolha um número inteiro ou digite sair");

    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada.toLowerCase() == 'sair') {
        sair == true;
        return;
      }

      int? entradaInteiro = int.tryParse(entrada);

      if (entradaInteiro != null) {
        print("Resultado: ${calcular(entradaInteiro)}!");
        sair == true;
        return;
      } else {
        print('Você não digitou um número');
      }
    }
  }
}
