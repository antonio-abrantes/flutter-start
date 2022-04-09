class Usuario {
  static const senhaRoot = '654321';
  static const senhaPadrao = '123456';
  String usuario = '';
  String senha = '';

  Usuario.root({String usuario = '', String senha = ''}){
    loginRoot(usuario, senha);
  } 

  Usuario({String usuario = '', String senha = ''}) {
    print('Construtor!');
    this.usuario = usuario;
    this.senha = senha;
    if(usuario != '' && senha != ''){
      autenticar(usuario, senha);
    }
  }

  void loginRoot(String usuario, String senha){
    print('Login root ☉―――↴');
    if(senha == senhaRoot){
      print("Bem vindo $usuario, você é o administrador!");
    }else{
      print('Usuário ou senha inválidos!');
    }
  }

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
  Usuario use1 = new Usuario();
  use1.autenticar('Antônio Abrantes', '12345');

  Usuario user2 = new Usuario(usuario: 'Ana Paula', senha: '123456');

  Usuario user3 = new Usuario.root(usuario: 'Antônio Abrantes', senha: '654321');
}
