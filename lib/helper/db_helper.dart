// import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> database() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(path.join(dbPath, 'places.db'),
        onCreate: (db, version) {
     return db.execute(
          'CREATE TABLE user_places(id TEXT PRIMARY KEY, title TEXT, description TEXT,image TEXT)');
    }, version: 1);
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DbHelper.database();
    db.insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DbHelper.database();
    return db.query(table);
  }
}
