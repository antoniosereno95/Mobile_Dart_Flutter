void main() {
  String palavra = "radar";
  bool resultado = ehPalindromo(palavra);
  print('A palavra "$palavra" é um palíndromo? $resultado');
}

bool ehPalindromo(String s) {
  int inicio = 0;
  int fim = s.length - 1;

  while (inicio < fim) {
    if (s[inicio] != s[fim]) {
      return false;
    }
    inicio++;
    fim--;
  }
  return true;
}
