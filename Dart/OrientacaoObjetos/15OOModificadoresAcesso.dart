class Configuracoes {
  static String indentificadorApp = '78s8asasfa9s9a8';
  bool notificacaoComSom = true;

  static void configuracoesApp() {
    print('Configurações do App');
  }
}

class Conta {
  double saldo = 0;
}

void main(List<String> args) {

  // Configuracoes cfig = new Configuracoes();

  // print(cfig.notificacaoComSom);

  print(Configuracoes.indentificadorApp);
  Configuracoes.configuracoesApp();

  final Conta c01 = new Conta();
  
  // c01 = new Conta();
}
