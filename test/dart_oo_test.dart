import 'package:dart_oo/gradebook.dart';
import 'package:dart_oo/student.dart';
import 'package:test/test.dart';

void main() {
  final book = GradeBook([
    Student('1', 'A', 90),
    Student('2', 'B', 75),
    Student('3', 'C', 50),
  ]);

  test('统计方法', () {
    expect(book.average, closeTo(71.67, 0.01));
    expect(book.maxBy()!.name, 'A');
    expect(book.countPassed(), 2);
    expect(book.groupByGrade()['优']!.length, 1);
  });

  test('越界分数抛ArgumentError', () {
    final s = Student('4', 'D', 60);
    expect(() => s.score = 120, throwsArgumentError);
    expect(() => s.score = -1, throwsArgumentError);
  });
}