mixin Logger{
    void log(String message){
        print('[$runtimeType] $message');
    }
}