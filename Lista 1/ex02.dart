

void main() {
  print("Digite o preço original do produto:");
  var precoOriginal = 100.0;
  print("$precoOriginal");

  print("Digite a porcentagem de desconto (%):");
  var porcentagemDesconto = 25.0;
  print("$porcentagemDesconto");
 
  var desconto = precoOriginal * (porcentagemDesconto / 100);

  var precoFinal = precoOriginal - desconto;

  print("O preço final do produto após aplicar um desconto de $porcentagemDesconto% é: $precoFinal");
}
