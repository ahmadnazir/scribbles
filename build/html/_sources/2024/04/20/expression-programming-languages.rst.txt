Expression programming languages
================================

.. post:: Apr 20, 2024
   :tags: cs, programming

According the Chomsky hierarchy, there are 4 categories. From most expressive to least:

- Type-0: Recursively Enumerable Grammar
- Type-1: Context Sensitive Grammar
- Type-3: Context Free Grammar
- Type-4: Regular Grammar

These grammars are used to express the syntax of the programming language.
Semantics, on the other hand - which deals with how we evaluate the constructs - gives the programming language ability to do things. In practice, programming languages like C, JS, etc can be expressed with a Type-3 grammar (CFG) but are turning complete (i.e. most powerful machines we know).

Example of a Type-4 - Regular Grammar is during the lexical analysis stage of the compilation process of a language i.e. break the input into tokens. Also, pattern matching using simple regular expressions are an example. RegExps using lookahead and backtracking are a different story.
