import 'dart:io' show Directory, File, Platform;
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';


class StudentRecords extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get uuid => text().unique()();
  TextColumn get name => text()();
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

  Future deleteStudent({required String targetStudentUuid}){
    return (delete(studentRecords)..where((tbl) => tbl.uuid.equals(targetStudentUuid))).go();
  }

  @override
  int get schemaVersion => 1;
}



//database connection - Do Not Modify
LazyDatabase _openConnection(){
  return LazyDatabase(() async {
    final Directory docFolder = await getApplicationDocumentsDirectory();
    final Directory saveFolder;
    if(Platform.isWindows || Platform.isMacOS || Platform.isLinux){
      saveFolder = Directory("$docFolder/NagisaTalk");
      if(!await saveFolder.exists()){
        saveFolder.create(recursive: true);
      }
    }else{
      saveFolder = docFolder;
    }
    final file = File(p.join(saveFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}