Index Types
===========

.. post:: Feb 05, 2022
   :tags: typescript

Using raw strings to convey type information::

  function myFn<T, K extends keyof T>(
    collection: T[],
    propName: K,
  ) {
    // `propName` can only be a valid property i.e. `K` exists on `T`
  }

E.g. the following function indexes a collection only the properties that are
valid::

  function indexBy<T, K extends keyof T>(
    collection: T[],
    propName: K,
  ) {
    return collection.reduce((dictionary, i) => {
      const key = i[propName];
      dictionary[key] = i;
      return dictionary;
    }, {} as any);
  }

Also with return type::


  function indexBy<T, K extends keyof T, G extends string | number>(
    collection: T[],
    propName: K,
  ): Record<G, T> {
    return collection.reduce((dictionary, i) => {
      const key = i[propName];
      dictionary[key] = i;
      return dictionary;
    }, {} as any);
  }
