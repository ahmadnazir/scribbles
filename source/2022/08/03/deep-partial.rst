Deep partial
============

.. post:: Aug 03, 2022
   :tags: typescript

There is no native `Partial` functionality if we want to apply it to the nested properties of an object as well. 

::

   type DeepPartial<Thing> = Thing extends Array<infer ArrayMember>
     ? DeepPartialArray<ArrayMember>
     : Thing extends object
     ? DeepPartialObject<Thing>
     : Thing | undefined;

   type DeepPartialArray<Thing> = Array<DeepPartial<Thing>>;
   type DeepPartialObject<Thing> = {
     [Key in keyof Thing]?: DeepPartial<Thing[Key]>;
   };

Reference: https://twitter.com/mattpocockuk/status/1505892984658743300?s=20&t=NaylAKSz2yuiiGibIeAnVw
