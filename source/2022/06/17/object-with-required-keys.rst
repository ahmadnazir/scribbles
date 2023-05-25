Object with required keys
=========================

.. post:: 06/17/2022
   :tags: typescript

Consider that we have an `enum` containing the keys:

::

   enum Fruit {
     Apple = 'apple',
     Banana = 'banana',
     Orange = 'orange',
   }

The following way we can ensure that the object has all keys from the enum `Fruit`:

::

   const desserts: { [fruit in Fruit]: string } = {
     [Fruit.Apple]: 'Apple Pie',
     [Fruit.Banana]: 'Banana Bread',
     [Fruit.Orange]: 'Orange Panna Cotta',
   };

We can also use an object instead of an enum:

::

    const fruits = ['apple', 'banana', 'orange'] as const;
    type Fruit = typeof fruits[number];
    const desserts: { [key in Fruit]: string } = {
      apple: 'Apple Pie',
      banana: 'Banana Bread',
      orange: 'Orange Panna Cotta',
    };
