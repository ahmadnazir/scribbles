Getting Started
===============

.. post:: 30/12/2020
   :tags: rust

.. code::

   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


Login again to make rustup available for all shells.


Racer
-----

Racer: Rust Auto CompletER

https://github.com/racer-rust/racer#configuration

.. code::

   rustup component add rust-src
   rustup toolchain add nightly
   cargo +nightly install racer
