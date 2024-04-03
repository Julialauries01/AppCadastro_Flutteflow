import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'appsqlite',
      'sqlitaappcadastro.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ListarprodutosRow>> listarprodutos() => performListarprodutos(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future updateproduto({
    String? produto,
    int? id,
    String? descricao,
    double? preco,
  }) =>
      performUpdateproduto(
        _database,
        produto: produto,
        id: id,
        descricao: descricao,
        preco: preco,
      );

  Future deleteproduto({
    int? id,
  }) =>
      performDeleteproduto(
        _database,
        id: id,
      );

  Future addProduto({
    String? produto,
    String? descricao,
    String? preco,
  }) =>
      performAddProduto(
        _database,
        produto: produto,
        descricao: descricao,
        preco: preco,
      );

  /// END UPDATE QUERY CALLS
}
