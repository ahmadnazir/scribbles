Object with required keys
=========================

.. post:: 06/17/2022
   :tags: typescript

Consider that we have an `enum` containing the keys:

.. code:: typescript

   enum Fruit {
     Apple = 'apple',
     Banana = 'banana',
     Orange = 'orange',
   }

The following way we can ensure that the object has all keys from the enum `Fruit`:

.. code:: typescript

   const desserts: { [fruit in Fruit]: string } = {
     [Fruit.Apple]: 'Apple Pie',
     [Fruit.Banana]: 'Banana Bread',
     [Fruit.Orange]: 'Orange Panna Cotta',
   };
