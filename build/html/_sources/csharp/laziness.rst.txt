Laziness
========

.. post:: Dec 30, 2020
   :tags: csharp


Create a lazy list
------------------

Let's create a lazy list of numbers, only realized as we ask for the values. The `IEnumerable` interface in conjunction with the `yield` operator allows this.

.. code::

   static void Main(string[] args)
   {
       foreach (var i in Range(1000000000)) // 1 million numbers in list
       {
           Thread.Sleep(1000);              // 1 second delay
           Console.WriteLine(i);
       }
   }

   public static IEnumerable<int> Range(int limit)
   {
       for (var i = 0; i < limit; i++ )
       {
           yield return i;
       }
   }


Each number is printed after a delay and is loaded into memory when needed.


Working on chunks at a time
---------------------------

Why work on a chunk at a time? There are 2 reasons that I can think of:

- For efficient memory usage we don't want to keep loading the elements in the memory. Let's work on chunks of the sequence at a time and let the garbage collector cleanup chunks that are no longer needed.
- If fetching the items one by one is expensive (e.g. every read has a latency, etc), it would make sense to do batch processing.

Let's partition the list:

.. code::

   public static IEnumerable<List<int>> Partition(this IEnumerable<int> sequence, int limit)
   {
       var partition = new List<int>();
       var count = 0;
       foreach (var i in sequence)
       {
           count++;
           partition.Add(i);
           if (count >= limit)
           {
               yield return partition;

               // reset
               count = 0;
               partition = new List<int>();
           }
       }

       // return the last partition
       if (partition.Count > 0) {
           yield return partition;
       }
   }

Let's add functions that will operate on the partitions:

.. code::

   public static IEnumerable<int> Increment(IEnumerable<int> list)
   {
       Console.WriteLine($"Incrementing...");
       Thread.Sleep(500);
       return list.Select(i => i+1);
   }

The following runs lazily and sequentially:

.. code::

   static void Main(string[] args)
   {
       var result = Range(105)
           .Partition(20)
           .Select(Increment)
           ;

       Console.WriteLine($"Total number of partitions: {result.Count()}");
   }


The output is:

.. code::

   Incrementing...
   Incrementing...
   Incrementing...
   Incrementing...
   Incrementing...
   Incrementing...
   Total number of partitions: 6


Working asynchronously on partitions
------------------------------------

Let's say our batch process is an asynchronous operation e.g. sending the items in the batch to a server, db etc. How do we update our pipeline and keep everything lazy so that we don't load everything in memory?

Consider the async function:

.. code::

   static async Task Main(string[] args)
   {
       var result = Range(10)
           .Partition(3)
           .Select(ToAsync)
           .Select(IncrementAsync)
           ;

       foreach (var t in result)
       {
           var partition = await t;
           foreach (var i in partition)
           {
               Console.WriteLine(i);
           }
       }

   }

   public static async Task<IEnumerable<int>> ToAsync(IEnumerable<int> list)
   {
       return await Task.Run(() => list);
   }

   public static async Task<IEnumerable<int>> IncrementAsync(Task<IEnumerable<int>> task)
   {
       Console.WriteLine("Incrementing...");
       Thread.Sleep(500);
       var list = await task;
       return list.Select(i => i+1);
   }

which gives the output:

.. code::

   Incrementing...
   1
   2
   3
   Incrementing...
   4
   5
   6
   Incrementing...
   7
   8
   9
   Incrementing...
   10

Even though the operations are asynchronous, they run sequentially.

How to Flat Map ?!
------------------

The pipeline returns a lazy sequence of Tasks that return lists on completion. We want to do a flat map (`.SelectMany` in Linq) so that we get one lazy sequence instead of many lists. Unfortunately, `yield` doesn't work when dealing with asynchronous streams (`The feature 'async streams' is currently in Preview and *unsupported*`) - async streams are supported in C# 8.0 and .NET Core 3.0.

At this time, the only thing I can think of is to keep the pipeline as it is (`IEnumerable<Task<List<int>>>`) or create an instance of `IObservable` and delegate the work. Any ideas?
