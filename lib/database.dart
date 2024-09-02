import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    // Initialize FFI
    sqfliteFfiInit();

    // Set the database factory
    databaseFactory = databaseFactoryFfi;

    final String databasesPath = await getDatabasesPath();
    final String path = join(databasesPath, 'trackingNumbers.db');
    print(path);
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
            CREATE TABLE trackingNumbers (
                trackingNumber TEXT PRIMARY KEY
            )
        ''');
  }

  Future<void> addEntry(String trackingNumber) async {
    final db = await instance.database;
    await db.insert(
      'trackingNumbers',
      {'trackingNumber': trackingNumber},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print("${trackingNumber} added to database");
  }

  Future<void> removeEntry(String trackingNumber) async {
    final db = await instance.database;
    await db.delete(
      'trackingNumbers',
      where: 'trackingNumber = ?',
      whereArgs: [trackingNumber],
    );
    print("${trackingNumber} removed from database");
  }

  Future<List<String>> getAllEntries() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query('trackingNumbers');
    return List.generate(maps.length, (i) {
      return maps[i]['trackingNumber'] as String;
    });
  }
}
