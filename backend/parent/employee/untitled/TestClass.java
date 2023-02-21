class TestClass {
    public static void main(String args[]) {

        SingleTon x = SingleTon.Singleton();
        SingleTon y = SingleTon.Singleton();
        SingleTon z = SingleTon.Singleton();

        z.s = "hello world";
        System.out.println("x's s value= " + x.s);
        System.out.println("y's s value= " + y.s);
        System.out.println("y's s value= " + z.s);





    }

}

