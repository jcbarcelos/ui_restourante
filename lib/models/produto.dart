class Produto {
  String imagem, nome, descricao;
  int id;
  double preco;

  Produto({
    required this.id,
    required this.imagem,
    required this.preco,
    required this.descricao,
    required this.nome,
  });
}

List<Produto> produtos = [
  Produto(
    id: 1,
    nome: 'Hamburguer 1',
    preco: 25.0,
    descricao: 'Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 2,
    nome: 'Hamburguer 2',
    preco: 50.0,
    descricao: 'Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 3,
    nome: 'Hamburguer 3',
    preco: 75.0,
    descricao: 'Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 4,
    nome: 'Hamburguer 4',
    preco: 100.0,
    descricao: ' Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 5,
    nome: 'Hamburguer 5',
    preco: 125.0,
    descricao: ' Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 6,
    nome: 'Hamburguer 6',
    preco: 150.0,
    descricao: ' Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 7,
    nome: 'Hamburguer 7',
    preco: 175.0,
    descricao: ' Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 8,
    nome: 'Hamburguer 8',
    preco: 200.0,
    descricao: ' Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 9,
    nome: 'Hamburguer 9',
    preco: 225.0,
    descricao: ' Um exelente hamburgur',
    imagem: imagePath,
  ),
  Produto(
    id: 10,
    nome: 'Hamburguer 10',
    preco: 250.0,
    descricao: ' Um exelente hamburgur',
    imagem: imagePath,
  ),
];

String descMokc = "Um exelente hamburgur";
String imagePath = 'assets/images/hamburguer.jpg';
