import 'package:sqflite/sqflite.dart';

class AppDatabase {

  AppDatabase._();

  static final AppDatabase _appDatabase = AppDatabase._();
  static AppDatabase getInstance() => _appDatabase;

  late Database _database;

}