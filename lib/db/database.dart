import 'dart:ffi';
import 'dart:io' show Directory, Platform;
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
part 'database.g.dart';

class StudentRecords extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get uuid => text().unique()();
  TextColumn get schoolName => text()();
  TextColumn get imagePath => text()();
}

class MessageRecords extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get messageUuid => text().unique()();
  TextColumn get senderStudentUuid => text()();
  BoolColumn get isImage => boolean()();
  TextColumn get textContent => text().nullable()();
  TextColumn get imageContentInBase64 => text().nullable()();
}

class ConversationRecords extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get conversationUuid => text().unique()();
}

@DriftDatabase(tables: [StudentRecords, MessageRecords, ConversationRecords])
class Database extends _$Database{
  Database() : super(_openConnection());
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection(){
  return LazyDatabase(() async {
    final Directory docFolder = await getApplicationDocumentsDirectory();
    final Directory saveFolder;
    if(Platform.isWindows || Platform.isMacOS || Platform.isLinux){
      final saveFolder = Directory("$docFolder/NagisaTalk");
      if(!await saveFolder.exists()){

      }
    }
  });
}