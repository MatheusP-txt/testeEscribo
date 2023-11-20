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

int calcular(int numero) {
  int somatorio = 0;

  for (var indice = 0; indice < numero; indice++) {
    if (indice % 3 == 0 || indice % 5 == 0) {
      somatorio += indice;
    }
  }

  return somatorio;
}
