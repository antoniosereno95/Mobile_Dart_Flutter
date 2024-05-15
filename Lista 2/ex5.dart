void main() {
  String texto = "Olá, mundo!";
  int contagem = contarVogais(texto);
  print('O número de vogais em "$texto" é: $contagem');
}

int contarVogais(String s) {
  int contagem = 0;
  String vogais = "aeiouAEIOU";

  for (int i = 0; i < s.length; i++) {
    if (vogais.contains(s[i])) {
      contagem++;
    }
  }

  return contagem;
}
