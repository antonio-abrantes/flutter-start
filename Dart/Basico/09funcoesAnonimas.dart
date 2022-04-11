void exibirDador1(String nome, int idade, double altura) {
  print('Nome: $nome');
  print('Idade: $idade');
  print('Altura: $altura');
}

void exibirDador2(String nome, {int idade = 0, double altura = 0}) {
  print('Nome: $nome');
  print('Idade: $idade');
  print('Altura: $altura');
}

void parametroComFuncao(Function f1, Function f2) {
  print('Dentro da funcão com funcões!');
  f1('Antonio', 25, 1.60);
  f2('Antonio', idade: 25, altura: 1.60);
}

void parametroComFuncaoAnonima(String msg, Function f1) {
  print(msg);
  f1();
}

void main(List<String> args) {
  // exibirDador1('Antonio', 25, 1.60);
  // exibirDador2('Antonio', idade: 25, altura: 1.60);
  parametroComFuncao(exibirDador1, exibirDador2);
  parametroComFuncaoAnonima('Ok', (){
    print('Função anonima executada com sucesso!');
  });
}
