import 'student.dart';
import 'logger.dart';
class GradeBook with Logger{
    final List<Student>_students;
    
    GradeBook(this._students);
    double get average{
        log('计算平均分');
        return _students.fold<double>(0,(sum,s)=>sum+s.score)/_students.length;}
    Student? maxBy()=>_students.isEmpty?null:_students.reduce((a,b)=>a.score>=b.score?a:b);
    int countPassed({double line=60})=>_students.where((s) => s.score>=line).length;
    Map<String,List<Student>>groupByGrade()=>{ 
        for(final g in ['优','良','中']) 
            g: _students.where((s)=>s.grade==g).toList()
    };
}