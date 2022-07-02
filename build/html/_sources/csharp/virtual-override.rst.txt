How do keywords virtual and override work?
===========================================

.. post:: 07/13/2019
   :tags: csharp

Consider the following classes:

.. code::

   public class A {
     public void test() {
       Console.WriteLine("This is class A");
     }
   }
   public class B : A {
     public void test() {
       Console.WriteLine("This is class B");
     }
   }

Now if you initialize the variables:

.. code::

   A a = new A();
   A b = new B(); // Note that the type is A not B

   a.test(); // This is class A
   b.test(); // This is class A (calls base class's function)

Also it throws a warning:

.. code::

   warning CS0108: 'B.test()' hides inherited member 'A.test()'


In order to override the function, `A's test` will have to be marked as `virtual` and `override` keyword is required for `B's test`:

.. code::

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

