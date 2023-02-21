public class SingleTon {
    private static SingleTon singleTon;
    public static String s;

    private SingleTon() {
        s = "hello singleton";
    }

    public static SingleTon Singleton()
    {
        // To ensure only one instance is created
        if ( singleTon == null) {
            singleTon = new SingleTon();
        }
        return singleTon;
    }
}
