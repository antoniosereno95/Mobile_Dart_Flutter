void main() {
  int numero = 17;
  bool resultado = ehPrimo(numero);
  print('O número $numero é primo? $resultado');
}

bool ehPrimo(int n) {
  if (n <= 1) {
    return false;
  }
  if (n == 2) {
    return true;
  }
  if (n % 2 == 0) {
    return false;
  }
  
  for (int i = 3; i <= n ~/ 2; i += 2) {
    if (n % i == 0) {
      return false;
    }
  }
  
  return true;
}
