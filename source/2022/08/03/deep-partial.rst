Deep partial
============

.. post:: 08/03/2022
   :tags: typescript

There is no native `Partial` functionality if we want to apply it to the nested properties of an object as well. The following is take from: https://twitter.com/mattpocockuk/status/1505892984658743300?s=20&t=NaylAKSz2yuiiGibIeAnVw

::

   type DeepPartial<Thing> = Thing extends Array<infer InferredArrayMember>
     ? DeepPartialArray<InferredArrayMember>
     Thing extends object
     ? DeepPartialObject<Thing>
     : Thing | undefined;

   type DeepPartialArray<Thing> = Array<DeepPartial<Thing>>;
   type DeepPartialObject<Thing> = {
     [Key in keyof Thing]?: DeepPartial<Thing[Key]>;
   };
