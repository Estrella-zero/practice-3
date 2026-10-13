import 'student.dart'
class GradeBook{
    final List<Student>_student;
    
    GradeBook(this._student);
    double get avg=>_students.fold<double>(0,(sum,s)=>sum+s.score)/_students.length;
    Student? maxBy()=>_students.isEmpty?null:_students.reduce((a,b)=>a.score>=b.score?a:b);
    int countPassed({double line=60})=>_students.where((s) => s.score>=line).length;
    Map<String,List<Student>>groupByGrade()=>{ 
        for(final g in ['优','良','中']) 
        g:_students.where((s)=>s.grade==g).toList()
    };
}