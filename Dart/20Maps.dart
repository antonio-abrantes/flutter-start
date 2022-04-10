class Usuario {
  String nome = '';
  int idade = 0;

  Usuario(this.nome, this.idade);
}

void main(List<String> args) {

  Map listFrutas = new Map();
  listFrutas["01"] = 'Morango';
  listFrutas["02"] = 'Uva';
  listFrutas["03"] = 'Pera';
  listFrutas["04"] = 'Maçã';

  print(listFrutas);
  print(listFrutas["02"]);

  Map<int, String> estados = new Map();
  estados[1] = 'Paraíba';
  estados[2] = 'Rio Grande do Norte';
  estados[3] = 'Pernambuco';
  estados[4] = 'Alagoas';

  print(estados);
  print(estados.keys);
  print(estados.values);
  print(estados.containsKey(2));
  print(estados.containsValue('Paraíba'));

  estados.forEach((key, value) {
    print('Estado[$key]: $value');
  });

  Map<int, Usuario> usuarios = new Map();

  usuarios[1] = new Usuario('Antônio Abrantes', 25);
  usuarios[2] = new Usuario('Ana Paula', 20);
  usuarios[3] = new Usuario('Fulano de Tal', 30);

  usuarios.forEach((key, value) {
    print('Usuário[$key]: ${value.nome}');
  });

}