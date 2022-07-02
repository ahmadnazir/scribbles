GPG
===

.. post:: 10/16/2019
   :tags: identity

Create a new gpg key
--------------------

.. code::

   gpg --default-new-key-algo rsa4096 --gen-key


For me, it looked like:

.. code::

   gpg (GnuPG) 2.2.4; Copyright (C) 2017 Free Software Foundation, Inc.
   This is free software: you are free to change and redistribute it.
   There is NO WARRANTY, to the extent permitted by law.
   
   Note: Use "gpg --full-generate-key" for a full featured key generation dialog.
   
   GnuPG needs to construct a user ID to identify your key.
   
   Real name: Ahmad Nazir Raja
   Email address: ahmadnazir@gmail.com
   You selected this USER-ID:
       "Ahmad Nazir Raja <ahmadnazir@gmail.com>"
   
   Change (N)ame, (E)mail, or (O)kay/(Q)uit? O
   We need to generate a lot of random bytes. It is a good idea to perform
   some other action (type on the keyboard, move the mouse, utilize the
   disks) during the prime generation; this gives the random number
   generator a better chance to gain enough entropy.
   gpg: key E28E7DA5BE1BAEBF marked as ultimately trusted
   gpg: directory '~/.gnupg/openpgp-revocs.d' created
   gpg: revocation certificate stored as '~/.gnupg/openpgp-revocs.d/1F7BFED782E9E540432E3F48E28E7DA5BE1BAEBF.rev'
   public and secret key created and signed.
   
   Note that this key cannot be used for encryption.  You may want to use
   the command "--edit-key" to generate a subkey for this purpose.
   pub   rsa4096 2019-10-01 [SC] [expires: 2021-09-30]
         1F7BFED782E9E540432E3F48E28E7DA5BE1BAEBF
   uid 


How to upload it?
-----------------

List all the keys:

.. code::

   gpg -K --keyid-format long --with-colons --with-fingerprint

   gpg: checking the trustdb
   gpg: marginals needed: 3  completes needed: 1  trust model: pgp
   gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
   gpg: next trustdb check due at 2021-09-30
   sec:u:4096:1:E28E7DA5BE1BAEBF:1569933698:1633005698::u:::scSC:::+:::23::0:
   fpr:::::::::1F7BFED782E9E540432E3F48E28E7DA5BE1BAEBF:
   grp:::::::::45D28293F15DFB2DE4663E44DEA18F4F33C92699:
   uid:u::::1569933698::1E30CAFF6B377D6AA40084AD05AB03C0642341C6::Ahmad Nazir Raja <ahmadnazir@gmail.com>::::::::::0:

Export the one that is called fpr (no idea what that means):

.. code::

   gpg --export -a 1F7BFED782E9E540432E3F48E28E7DA5BE1BAEBF

   
   -----BEGIN PGP PUBLIC KEY BLOCK-----
   
   mQINBF2TSYIBEADd8oPe7acT2zMmlZvcJMLAboWB5VAMLEmzLh07WK/MgRWPNuoR
   TdbFdbrSUe6Zhlz4kqVGr6tzWRUzKzJnE2qLCtLHpcMFit0dCHYuTkOIlsPT4N+E
   95YmEEBnGDPHBgyQvbsItUKIDVGFZQG0Bn7LiliBHxv3SYEWM2bnltf5s4OO3mdV
   5DhS/dTUerkim85UK8eoo67N1P7GN44FL1ScfMPK6jexlA0MqgLqMBBNX4palEsy
   BdYqXolOLTDFQb27JgeAaONZJPy0liFd+auvZslgkF49hkNDaG/U9vDdOM1Jk7TF
   8illEfa6IG/zOJlYbNJ2r2s/QXfwEO30RlRRzDwElPipYxMyp4tzQKyolTjCgbTP
   seDjP+937FTdNf/luNkH/h3vn1geSgGF6+PjStp9uHrsOywRkknxKBsTIgNshB6v
   Ce8W7/Q0GD3AEhRYJfs2DOikdVcXqyUbgtRxJBt+ac004yli9Qx1P7QLrkVW8b+u
   4E0P8UyJuC/iHOEfzGOtVSlQJacR4RyCScy+6Ank1svuKsFrYOrc5AKJ2TMNRR3d
   j2whRgcjrWJ8agYSSQ53cAj3I0nhLYTAvjJdn+Wk5Q756xXV7tsUH/jw1Da+fQNh
   IxpA/lnIC32VvVfb+wfdVAgnSV0iMm8AsSDacJCSSnZ0JfBJwUOMQph5NQARAQAB
   tCdBaG1hZCBOYXppciBSYWphIDxhaG1hZG5hemlyQGdtYWlsLmNvbT6JAlQEEwEK
   AD4WIQQfe/7XgunlQEMuP0jijn2lvhuuvwUCXZNJggIbAwUJA8JnAAULCQgHAgYV
   CgkICwIEFgIDAQIeAQIXgAAKCRDijn2lvhuuv8xPEACL8yZXsun82RwCzs6nOucY
   wUVHIBeBd29ocwy30HPIALvAX/NiDcOblrzEiiHwDQrz4zSRR0SScOcO7EFBJ6zE
   GSlZWUIWfHgwpMR8YKrGAKVwkbLU0mooXAKUIw6ALZrpgwCqBmbVbdnpUeX92Cbl
   Y4n5U2ejrEYs62I6/5W/VQu7O6A5Gsh7qyBkAxZWUMtq58VQBJI/4qA6CqORdxCo
   zDxQW8Ck97MoztY1oHs1FAk3EF5VamYwovpa4NQxBzn1QZ2EVVmdVXMKQ14hCx8w
   6ZMzZ17lMf4Tu2P2Oxk1W9/pcpt+h58h2yl2sVagKhegOSJ0DwCMykaewbuohCbZ
   RzVGlcqedST1go+vQAOim50WcgTrpvwcI9OzO6uNs+rF/Vyn0tBFu9tZqpvsulyf
   FnJ/Hsbbl0ZD7WzZhL1TFqsX+6FrjuYo6zJ8Bg0awswb4VAs2HsPPkuzpMbib0KQ
   4XmyeV694ziBB2s4FO97VTV95O8yYpfUWlvDgsRRBCjUNbiWi2DszpzmhSkWtjuV
   K9WO8QnW1GlQAPiH0neU+HgmXusfRZ5/hEZ3ze6kUy+rLQRz3MgNgLWn/KqgwXW9
   JDgiu4fKO+fYaNw1XCN/5ANRaLZp0o1ODbUVXluHnVrXCOtxKvF6jgL8Cbyee8qK
   IWx/qzolRyGKbp4fJTHAaA==
   =kQXR
   -----END PGP PUBLIC KEY BLOCK-----


I uploaded my key in firebase. I couldn't use the command `gpg --keyserver certserver.pgp.com --send-key E28E7DA5BE1BAEBF`
