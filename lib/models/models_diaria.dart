class DiariasModels {
  final String nome;
  final double valor;
  final String data;
  final String endereco;

  DiariasModels(this.nome, this.valor, this.data, this.endereco);

  @override
  String toString() {
    return 'DiariasModels{nome: $nome, valor: $valor, data: $data, endereco: $endereco}';
  }
}