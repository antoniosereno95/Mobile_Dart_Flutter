void main() {
  List<int> numeros = [3, 7, 2, 5, 10, 6];
  int maiorNumero = encontrarMaiorNumero(numeros);
  print('O maior número é: $maiorNumero');
}

int encontrarMaiorNumero(List<int> numeros) {
  if (numeros.isEmpty) {
    throw ArgumentError('A lista não pode estar vazia');
  }
  
  int maior = numeros[0];
  for (int numero in numeros) {
    if (numero > maior) {
      maior = numero;
    }
  }
  return maior;
}
