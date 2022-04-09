class Casa {
  String cor = '';
  String proprietario = '';
  bool portaAberta = false;

  void abrirJanela() {
    print('Abrir janela!');
  }

  void abrirPorta() {
    if (this.portaAberta == false) {
      this.portaAberta = true;
      print('Porta da casa $cor abriu!');
    } else {
      this.portaAberta = false;
      print('Porta da casa $cor fechou!');
    }
  }
}

class Usuario {
  static const senhaPadrao = '123456';

  String usuario = '';
  String senha = '';

  void autenticar(String usuario, String senha) {
    if (senha == senhaPadrao) {
      this.usuario = usuario;
      this.senha = senha;
      print('Usuário logado com sucesso!');
      print('Bem vindo $usuario');
    } else {
      print('Usuário ou senha inválidos!');
    }
  }
}

void main(List<String> args) {
  var casa1 = new Casa();
  casa1.proprietario = 'Antônio Abrantes';
  casa1.cor = 'Verde';

  print(casa1.proprietario);
  print(casa1.cor);
  casa1.abrirJanela();

  casa1.abrirPorta();
  casa1.abrirPorta();
  casa1.abrirPorta();
  casa1.abrirPorta();
  print('===============================');

  Usuario use1 = new Usuario();
  use1.autenticar('Antônio Abrantes', '12345');
}
