class Produto{
  String Nome;
  double Preco;
  int _QtdEstoque = 0;

  Produto({required this.Nome, required this.Preco});

  double ValorTotalEstoque({required double Preco, required int QtdEstoque}){
    double valorEstoque = Preco * QtdEstoque;
    return valorEstoque;
  }
  void set AddProdutoEstoque(int novaQtd){
    _QtdEstoque += novaQtd;
  }
  void verificarProdutoEstoque(Produto Nome){
    if (Nome._QtdEstoque<1){
      print("Produto não disponível em estoque");
    }
    else{
      print("Produto disponível. Quantidade em estoque: ${Nome._QtdEstoque}");
    }
  }
}