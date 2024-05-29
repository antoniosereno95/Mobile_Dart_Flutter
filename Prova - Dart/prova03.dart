import 'dart:ffi';

void main(){

  Bibliotecario bibliotecario1 = Bibliotecario("Elisson", "123", "administrador", 3000);
  print(bibliotecario1.cumprimentar());
  Bibliotecario bibliotecario2 = Bibliotecario("Antonio", "321", "arquivista", 2500);
  print(bibliotecario2.cumprimentar());

  Leitor leitor1 = Leitor("Higu", "456", "123", "estudante");
  print(leitor1.cumprimentarCompleto());
  Leitor leitor2 = Leitor("Luis", "654", "321", "visitante");
  print(leitor2.cumprimentarCompleto());

  List<Livro> listaLivro = [Livro("1", "1", "1", 1), Livro("2", "2", "2", 2),Livro("3", "3", "3", 3)];

  print(emprestarLivro(leitor1, "2", listaLivro));
}

String emprestarLivro(Pessoa p, String codigo , List<Livro> listaLivros){
  //essa funçao aqui nao vai funcionar pq eu nao sei iterar sobre listas em Dart. mas a Ideia ta correta, so precisa arruma a forma de iteração sobre a lista.
  for(int i = 0; i < listaLivro.size(); i++){
    if(listaLivro[i].codigo == codigo && listaLivros[i].disponivel == true){
      return "ola ${p.nome}, o livro ${listaLivros[i].titulo} esta disponivel.";
    }else{
      return "ola ${p.nome}, o livro ${listaLivros[i].titulo} nao esta disponivel, vamos escolher outro?";
    }
  }


}

class Pessoa{
  String cpf;
  String nome;
  int idade;
  String telefone;

  Pessoa(this.nome, this.cpf,{this.idade=-1,this.telefone=""});

  String cumprimentar(){
    return "Ola, eu sou ${this.nome}, com CPF ${this.cpf}";
  }

  String cumprimentarCompleto(){
    if(idade != -1 && telefone != ""){
      return "Ola, eu sou ${this.nome}, tenho ${this.idade} anos, com CPF é ${this.cpf}, e pode me ligar no ${this.telefone}";
    }else if(idade != -1 && telefone == ""){
      return "Ola, eu sou ${this.nome}, tenho ${this.idade} anos, com CPF é ${this.cpf}.";
    }else if(idade == -1 && telefone != ""){
      return "Ola, eu sou ${this.nome}, com CPF é ${this.cpf}, e pode me ligar no ${this.telefone}";
    }else {
      return "algo deu errado";
    }

  }
}


class Bibliotecario extends Pessoa{

  String funcao;
  double salario;

  Bibliotecario(nome, cpf , this.funcao, this.salario): super(nome, cpf);

  String cumprimentar(){
    return "ola, eu sou o ${this.nome}, trabalho com ${this.funcao}";
  }
}

class Leitor extends Pessoa{

  String matricula;
  String categoria;

  Leitor(nome, cpf, this.matricula, this.categoria) : super(nome, cpf);

  String cumprimentar(){
    return "ola, eu sou o ${this.nome}, minha matricula de Leitor é com ${this.matricula}";
  }
}

class Livro{

  String codigo;
  String titulo;
  String autor;
  int anoPublicacao;
  bool disponivel;

  Livro(this.codigo, this.titulo, this.autor, this.anoPublicacao, {this.disponivel=true});

}

