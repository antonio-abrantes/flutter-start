class Usuario {
  String nome = '';
  int idade = 0;

  Usuario(this.nome, this.idade);
}


void main(List<String> args) {

  List listVarios = ['Morango', 1.5, 'Uva'];
  List<String> listFrutas = ['Morango', 'Manga', 'Uva'];
  print(listFrutas.length);
  listFrutas.add('Pera');
  listFrutas.insert(2, 'Caju');

  listFrutas.removeAt(1);

  print(listFrutas.contains('Pera'));

  print(listVarios);
  print(listFrutas);

  Usuario user1 = new Usuario('Antônio Abrantes', 25);
  Usuario user2 = new Usuario('Ana Paula', 20);
  Usuario user3 = new Usuario('Fulano de Tal', 30);

  List<Usuario> usuarios = [];
  usuarios.add(user1);
  usuarios.add(user2);
  usuarios.add(user3);

  for (Usuario user in usuarios) {
    print('Usuário: ${user.nome}');
  }

}
