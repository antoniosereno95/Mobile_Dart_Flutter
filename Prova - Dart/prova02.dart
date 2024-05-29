void main(){

  BichinhoVirtual bixo1 = BichinhoVirtual("bixo",fome:80,saude:99);
  
  print(bixo1.retornaHumor());

}

class BichinhoVirtual{

  String nome;
  int fome;
  int saude;
  int idade;

  BichinhoVirtual(this.nome,{this.fome=0, this.saude=0, this.idade=1});

  String alterarNome(String novo_nome){
    this.nome = novo_nome;
    return "Seu novo nome é ${this.nome}";
  }

  String alteraFome(int nova_fome){
    if(nova_fome>=0 && nova_fome<=100){
      this.fome = nova_fome;
      return "A fome do bixinho foi atualizada para ${this.fome}";
    }else{
      return "insira um nivel de fome permitodo(de 0 a 100)";
    }
  }

  String alteraSaude(int nova_saude){
    if(nova_saude>=0 && nova_saude<=100){
      this.saude = nova_saude;
      return "A saude do bixinho foi atualizada para ${this.saude}";
    }else{
      return "insira um nivel de saude permitodo(de 0 a 100)";
    }
  }

  String alteraIdade(int nova_idade){
    if(nova_idade>=0){
      this.idade = nova_idade;
      return "A idade do bixinho foi atualizada para ${this.saude}";
    }else{
      return "insira uma idade nao negativa";
    }
  }

  String retornaHumor(){
    double humor;
    humor = (this.fome + this.saude)/2;

    if(humor >= 75){
      return "Feliz";
    }else if(humor>=50 && humor<75){
      return "OK";
    }else if(humor>=25 && humor<50){
      return "Triste";
    }else if(humor<25){
      return "Muito Triste";
    }else{
      return "string nun-null"; 
      //tava dando erro por conta do aninhamento de IF´s, tive que colocar essa verificação aqui.
    }
  }




}