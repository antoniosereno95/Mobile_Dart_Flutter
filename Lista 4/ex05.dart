void main(){
    Ingresso ingresso = Ingresso();
    ingresso.imprime_valor();

    VIP ingressoVIP = VIP();
    ingressoVIP.valorIngressoVIP();

    CamaroteInferior camaroteINFERIOR = CamaroteInferior("local", 100);
    camaroteINFERIOR.imprimeLocal();
    camaroteINFERIOR.imprimeValorIngressoCamaroteInferior();

    CamaroteSuperior camaroteSUPERIOR = CamaroteSuperior("local", 200);
    camaroteSUPERIOR.imprime_valor();
    camaroteSUPERIOR.imprimeLocal();
    camaroteSUPERIOR.imprimeValorIngressoCamaroteSuperior();
}

class Ingresso{
  double valor;
  double quantidade_vendas;

  Ingresso({this.valor = 100, this.quantidade_vendas = 1});

  void imprime_valor(){
    return print("Valor do ingresso: R\$${valor.toStringAsFixed(2)}");
  }
}

class VIP extends Ingresso{
   double valorAdicionalVIP;

  VIP({this.valorAdicionalVIP=10}) : super();

  void valorIngressoVIP() {
    double valorVIP = this.valor + this.valorAdicionalVIP;
    return print("Valor do ingresso VIP: R\$${valorVIP.toStringAsFixed(2)}");
  }

}

class Normal extends Ingresso{

  Normal() : super();

  void imprimeValorNormal(){
    return print("Valor do ingresso: R\$${valor.toStringAsFixed(2)}");
  }
}

class CamaroteInferior extends VIP{
  String local;
  double extraInferior;

  CamaroteInferior(this.local, this.extraInferior ) : super();

  void imprimeValorIngressoCamaroteInferior(){
    double valorCamaroteInferior = this.valor + this.valorAdicionalVIP + this.extraInferior;
    return print("Valor do ingresso: R\$${valorCamaroteInferior.toStringAsFixed(2)}");
  }

  void imprimeLocal(){
    return print("Local do Camarote Inferior: ${this.local}");
  }
}

class CamaroteSuperior extends VIP{
  String local;
  double extraSuperior;

  CamaroteSuperior( this.local, this.extraSuperior ) : super();

  void imprimeValorIngressoCamaroteSuperior(){
    double valorCamaroteSuperior = this.valor + this.valorAdicionalVIP + this.extraSuperior;
    return print("Valor do ingresso: R\$${valorCamaroteSuperior.toStringAsFixed(2)}");
  }

  void imprimeLocal(){
    return print("Local do Camarote Superior: ${this.local}");
  }
}
