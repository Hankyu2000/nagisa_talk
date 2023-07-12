import 'package:nagisatalk_mkii/db/database.dart';

class Student{
  final String studentUuid;
  final String name;
  final String schoolName;
  final String imagePath;
  Student({required this.studentUuid, required this.name, required this.schoolName, required this.imagePath});
}

class StudentController{
  final Database database;
  Student convertStudentRecord({required StudentRecord studentRecord}) => Student(name: studentRecord.name, studentUuid: studentRecord.uuid, schoolName: studentRecord.schoolName, imagePath: studentRecord.imagePath);
  void registerStudent({required Student student}) async{
    await database
        .into(database.studentRecords)
        .insert(StudentRecordsCompanion.insert(uuid: student.studentUuid, name: student.name, schoolName: student.schoolName, imagePath: student.imagePath));
  }
  void deleteStudent({required Student student}) async{
    await database.deleteStudent(targetStudentUuid: student.studentUuid);
  }

  //constructor
  StudentController({required this.database});
}