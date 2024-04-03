import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN LISTARPRODUTOS
Future<List<ListarprodutosRow>> performListarprodutos(
  Database database,
) {
  const query = '''
SELECCT * FROM cadastro
''';
  return _readQuery(database, query, (d) => ListarprodutosRow(d));
}

class ListarprodutosRow extends SqliteRow {
  ListarprodutosRow(super.data);

  int get id => data['id'] as int;
  String get nameproduto => data['nameproduto'] as String;
  String get descricao => data['descricao'] as String;
  double get preco => data['preco'] as double;
}

/// END LISTARPRODUTOS
