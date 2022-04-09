
void exibirMensagemPadrao(String msg) {
  print('Mesangem $msg');
}

void exibirMensagem({String msg = ''}) {
  print('Mesangem $msg');
}

// double calcularBonus(double bonus){
//   return bonus * 0.10;
// }

double calcularBonus(double bonus) => bonus * 0.10;

void main(List<String> args) {
  
  exibirMensagem();
  exibirMensagem(msg: 'Teste');

  var bonus = calcularBonus(20);
  print('Bonus: $bonus');

}