NLP
===

.. post:: 01/04/2022
   :tags: courses

Terminology
-----------

Hyponum/hypernym: Hierarchical relationships e.g. types of fruits and then peach, apple, etc.
Meronym: Relationshiop between Part and whole e.g. wheel and car.
Coreference: she is the same as 'Mary'
Constituency trees: another way to represent syntax
Stemming: removing/replacing suffixes to get the root form
Lemmatization: base form of a word e.g. 'good' is a lemma of better'


Feature extraction
------------------

- Bag of words: vector for all the words in the corpus and have 0,1 to indicate presence of that word in a vector. Results in a really long vector which is sparse (i.e. lots of 0s)
- Neural network: create a word embeding - leads to a dense representation. e.g. we can do this with `word2vec`. Similar words are colinear i.e. vectors point in the same direction.

Text descriptors
----------------

For both types of features mentioned above, we can sum the vectors and get a good text descriptor e.g.

this  1 0 0
good  0 1 0
thing 0 0 1

so good thing would be the sum of the relevant vectors i.e. 0 1 1


Text decriptors using 'Convolutions and maximum pooling over time' ... need to look a bit more to get the intuition right.
- once we have the resulting vector, apply more layers ... multi-layer perceptron.. I lost track.


Perplexity
----------

perplexity is inversely proportional to likelihood. The lower it is, the better it is

language modelling : helps us predict the next words in a sequence of words
Makov chains test us that we don't need to keep track of all the previous words, only n of them.
Which that in mind, we can have a mathematical model like this:

p(word) = p(w1|<start>) . p(w2|w1) . p(w3|w2) . ... p(<end> | w n)

Perplexity is inversely proportional to the above.

Smoothing
---------

If any one of the probablities is 0, the whole thing breaks down. So we need to apply smoothing.

Laplacian is 1-plus smoothing. We make the 0s into 1s and increase the counts for everything else to balance for what we have added.
