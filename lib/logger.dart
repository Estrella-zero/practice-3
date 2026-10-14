mixin Logger{
    void log(String message){
        print('[$runtimeType] $message');
    }
}
mixin TimeLogger{
  void log (String message){
    print ( '[TimeLogger] $message' );
    }
}