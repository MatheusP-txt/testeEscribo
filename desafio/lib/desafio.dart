int calcular(int numero) {
  int somatorio = 0;

  for (var indice = 0; indice < numero; indice++) {
    if (indice % 3 == 0 || indice % 5 == 0) {
      somatorio += indice;
    }
  }

  return somatorio;
}
