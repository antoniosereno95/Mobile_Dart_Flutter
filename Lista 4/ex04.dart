void main(){
  Livro livro1 = Livro("titulo", "autor", 10, disponivel: false, emprestado_para: "Antonio");

  print(livro1.livro_disponivel());
  print(livro1.emprestar("emprestado_para_externo"));
  print(livro1.livro_disponivel());
}

class Livro{
  String titulo;
  String autor;
  double numero_paginas;
  bool disponivel;
  String emprestado_para;

  Livro(this.titulo, this.autor, this.numero_paginas, 
  {this.disponivel=true, this.emprestado_para=""});

  String emprestar(String emprestado_para_externo){
    this.emprestado_para =emprestado_para_externo;
    this.disponivel = false;
    return "Livro ${this.titulo} emprestado para ${emprestado_para}.";
  }

  String livro_disponivel(){
      if(this.disponivel){
        return "Livro disponivel";
      }else{
        return "Livro indiponivel, emprestado para ${this.emprestado_para}";
      }
  }
}