import 'dart:io';

void main() {
  bool sair = false;

  while (!sair) {
    print('Escolha um número inteiro positivo ou digite sair\n');

    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada.toLowerCase() == 'sair') {
        sair == true;
        return;
      }

      int? entradaInteiro = int.tryParse(entrada);

      if (entradaInteiro == null) {
        print('\nVocê não digitou um número\n');
      } else if (entradaInteiro < 0) {
        print('\nVocê não digitou um número positivo\n');
      } else {
        print('\nResultado: ${calcular(entradaInteiro)}!\n');
        sair == true;
        return;
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
