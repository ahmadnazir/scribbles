using System;

namespace app
{
    public class A {
        public virtual void test() {
            Console.WriteLine("This is class A");
        }
    }
    public class B : A {
        public override void test() {
            Console.WriteLine("This is class B");
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            A a = new A();
            A b = new B();

            a.test(); // This is class A
            b.test(); // This is class A
        }
    }
}
