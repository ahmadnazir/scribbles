Object with required keys
=========================

.. post:: 17/06/2022
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
