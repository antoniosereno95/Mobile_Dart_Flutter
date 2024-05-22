
void main(){
    //inicializo uma pessoa
    Pessoa pessoa1 = Pessoa(); // o NEW é opcional
    //adiciona os atributos 
    pessoa1.nome = "Elisson";
    pessoa1.telefone = 50;
    pessoa1.telefone = "sansumg";
    //chama o metodo da classe
    pessoa1.cumprimentar();


    //pessoa 2 - construtor com os atributos obrigatorios
    Pessoa pessoa2 = Pessoa("antonio",20,"iphone")
    pessoa2.cumprimentar();


    //pessoa 3 - construtor opcional
    Pessoa pessoa3 = Pessoa("higu");
    pessoa3.cumprimentar();


    //pessoa 4 - construtor opcional com atributos opcionais
    Pessoa pessoa4 = Pessoa("Eduardo", idade:34, telefone:"xaomi");
    //com construtor com atributos opcinais, tem que dizer quais 
    //atributos voces esta se referindo ao colocar-lo no construtor

    
    //funcionario
    Funcionario funcionario1 = Funcionario("antonio", "vendas");
    funcionario1.cumprimentar();//herdou o metodo por herança.

}

class Pessoa{
    //Atributos
    String nome = ""; //tem que colocar os valores default em dart
    int _idade = 0; //underline bota o atributo como PRIVADO(ai precisa de um get e um set)
    String telefone = "";

    //construtor
    Pessoa(){} //construtor vazio

    Pessoa(String nome, int idade, String telefone){ 
        //construtor com recebimento de atributos igual ao JAVA, funciona.
        this.nome = nome;
        this.idade = idade;
        this.telefone = telefone;
    }

    Pessoa(this.nome, this.idade, this.telefone); //construtor dart limpo

    Pessoa(this.nome, {this.idade=0, this.telefone=""});
    //esse construtor tem o atributo "nome" como obrigatorio e os 
    //outros como opcionais, e como estamos utilizando parametros opcionais, 
    //assim como é nos metodos, temos que colocar o valor default no codiog.
    //ATRIBUTOS PRIVADOS NAO PODEM SER OPCIONAIS EM CONSTRUTORES<--

    //Metodos
    void cumprimentar(){
        print("Ola, meu nome é ${this.nome}");
    }

    //Getters and Setters
    set idade(int idade){
        this._idade = idade;
    }
    get idade(){
        return this._idade
    }
}

//HERANÇA EM DART

class Funcionario extends Pessoa{

    String setor = "tecnologia";

    //construtor estilo JAVA
    Funcionario(nome, idade, telefone, setor){
        super(nome, idade:idade, telefone:telefone);
        this.setor = setor;
    };

    //construtor reduzido Dart Flutter
    Funcionario(nome, idade, telefone, setor){
        super(nome, idade:idade, telefone:telefone);
    }

    //construtor dart opcional
    Funcionario(nome, {idade, telefone}, this.setor){
        super(nome);
    }

}