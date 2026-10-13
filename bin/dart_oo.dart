import 'package:dart_oo/gradebook.dart';
import 'package:dart_oo/student.dart';

void main(){
  final students=[Student('01','李华',92),Student('02','王芳',55)];
  final book=GradeBook(students)..log('成绩册建立，共${students.length}人');
  final passed=students.where((s)=>s.passed).toList();
  print('where及格:${passed.map((s)=>s.name).toList()}');
  final names=students.map((s) => s.name).toList();
  print('map 姓名:$names');
  print('average:${book.average}');
  print('maxBy:${book.maxBy()?.name}');
  print('countPassed 60分线: ${book.countPassed()},80分线: ${book.countPassed(line: 80)}');
  book.groupByGrade().forEach((g,list)=>
    print('groupByGrade $g: ${list.map((s)=>s.name).toList()}'));

  final average = students.fold<double>(0,(sum,s)=>sum + s.score) / students.length;
  print('fold 平均: $average');
  final byId = {for(final s in students)s.id:s};
  print('集合: ${byId['01']?.name}');
  final sorted = [...students]..sort((a,b)=>b.score.compareTo(a.score));
  print('级联sort 降序: ${sorted.map((s)=>s.name).toList()}');
  print('firstWhere 第一个不及格: ${students.firstWhere((s)=>!s.passed).name}');
  print('every 分数合法: ${students.every((s) => s.score >= 0)}');
}