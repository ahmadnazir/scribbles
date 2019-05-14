HTTP Response Header: X-Content-Type-Options
============================================


This is how the header is used (taken from [keycdn][keycdn]);

* A Chrome client makes a request to a web server for an asset (e.g. image.jpg).
* A response is sent back with the header X-Content-Type-Options: nosniff. This prevents the client from “sniffing” the asset to try and determine if the file type is something other than what is declared by the server.
* The browser then accepts the MIME type defined by the origin server and displays the asset to the viewer.


[keycdn]: https://www.keycdn.com/support/x-content-type-options
