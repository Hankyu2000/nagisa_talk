class Student{
  final String studentUuid;
  final String name;
  final String schoolName;
  final String imagePath;
  Student({required this.studentUuid, required this.name, required this.schoolName, required this.imagePath});

  Student convertStudentRecord({required studentRecord}){
    throw UnimplementedError;
  }
}