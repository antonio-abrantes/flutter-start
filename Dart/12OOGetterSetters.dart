class Conta {
  double _saldo = 0;
  double _saque = 0;

  void deposito(double valor){
    if(valor > 0){
      this._saldo = valor;
    }
  }

  // Getter
  double get saque {
    // Validações
    if(this._saque > this._saldo){
      print("Saldo insuficiente!");
      return 0;
    }else{
      return this._saque;
    }
    
  }

  // Setter
  set saque(double saque){
    this._saque = saque;
  }

}


void main(List<String> args) {
  
  Conta c1 = new Conta();
  c1.deposito(1000);
  c1.saque = 200;

  
  print(c1.saque);

}