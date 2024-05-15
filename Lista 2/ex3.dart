void main() {
  int numero = 5;
  int resultado = fatorial(numero);
  print('O fatorial de $numero é: $resultado');
}

int fatorial(int n) {
  if (n < 0) {
    throw ArgumentError('Número deve ser não negativo');
  }
  
  if (n == 0 || n == 1) {
    return 1;
  }
  
  int resultado = 1;
  for (int i = 2; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}
