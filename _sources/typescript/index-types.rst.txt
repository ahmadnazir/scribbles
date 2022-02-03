Index Types
===========

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
  ): Record<K, T[]> {
    return collection.reduce((dictionary, i) => {
      if (dictionary[propName]) {
        dictionary[propName].push(i);
      } else {
        dictionary[propName] = [i];
      }
      return dictionary;
    }, {} as Record<K, T[]>);
  }
