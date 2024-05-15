void main() {
  List<int> numeros = [1, 2];
  int soma = somaDeNumeros(numeros);
  print('A soma dos números é: $soma');
}

int somaDeNumeros(List<int> numeros) {
  int soma = 0;
  for (int numero in numeros) {
    soma += numero;
  }
  return soma;
}
