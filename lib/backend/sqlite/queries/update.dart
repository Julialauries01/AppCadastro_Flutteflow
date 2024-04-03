import 'package:sqflite/sqflite.dart';

/// BEGIN UPDATEPRODUTO
Future performUpdateproduto(
  Database database, {
  String? produto,
  int? id,
  String? descricao,
  double? preco,
}) {
  final query = '''
Update cadastro 
SET
 nomeproduto= '$produto'
descricao= '$descricao'
preco= $preco 
WHERE id = $id
''';
  return database.rawQuery(query);
}

/// END UPDATEPRODUTO

/// BEGIN DELETEPRODUTO
Future performDeleteproduto(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM cadastro WHERE id = $id
''';
  return database.rawQuery(query);
}

/// END DELETEPRODUTO

/// BEGIN ADDPRODUTO
Future performAddProduto(
  Database database, {
  String? produto,
  String? descricao,
  String? preco,
}) {
  final query = '''
INSERT INTO cadastro (nomeproduto,descricao,preco) VALUES  ('$produto','$descricao',$preco);
''';
  return database.rawQuery(query);
}

/// END ADDPRODUTO
