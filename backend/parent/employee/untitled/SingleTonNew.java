public class SingleTonNew {
    private static SingleTonNew instance;

    public static String text;

    private SingleTonNew() {
        text = "";
    }


    public static SingleTonNew getInstance() {
        if (instance == null) {
            instance = new SingleTonNew();
        }
        return instance;
    }
}

class Test2 {
    public static void main(String[] args) {
        SingleTonNew a = SingleTonNew.getInstance();
        SingleTonNew b = SingleTonNew.getInstance();
        SingleTonNew c = SingleTonNew.getInstance();

        System.out.println(a.text);



    }
}
