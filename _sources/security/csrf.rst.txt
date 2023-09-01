Cross site request forgery (CSRF)
=================================

.. post:: Oct 24, 2021
   :tags: security

An exploit when the attacker lures the victim on a legit domain e.g. `acme.com`,
to a domain they control e.g. `evil.com`, and tricks them into clicking a button
that sends a request to the legit domain.

If the authentication token is stored in the cookie and `acme.com` isn't protected
against this attack, the default behavior is that the auth token is sent along
with the request and it can lead to altering of some state on `acme.com`.

For clarity, here are the steps:

1. Victim authenticates to `acme.com`
2. Auth token gets stored in the cookie
3. Victim goes to `evil.com` (e.g. gets an email with the link, etc)
4. Victim clicks the link or a button that sends a request to `acme.com`
5. The request also contains the cookies including the auth token

So how to protect against it?

**Use something else than cookies - like local storage?**

The most obvious thing that comes to mind is to avoid storing auth tokens in
cookies and use something like local storage.

This is however not recommended. This is because local storage can be accessed
by javascript and browsers have no settings to disallow this. So, if you can
claim that your application is protected from XSS, then yes, you can storage the
auth token in local storage. In reality, web applications use a ton of 3rd party
libraries and it is not recommended to count on the fact that all libraries are
completely secure. Hence, we need to add protections so that even if XSS is a
possibility, the extent of the exploit is minimized.

Cookies on the other hand allow attributes that restrict access from javascript.
However using them is not enough as they lead to the above mentioned csrf issue.

How to mitigate?

**Doesn't `HttpOnly` attribute protect us?**

This makes sure that the cookie is inaccessible to JavaScript and helps mitigate
XSS attacks. CSRF on the other hand is exploited without the attacker having to
know the value of the cookie.

https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies#restrict_access_to_cookies

**Doesn't `SameSite` attribute for cookies protect us?**

We cannot solely rely on `SameSite` cookie attribute as it is a client side
protection mechanism with limited browser support.

What is `SameSite` attribue?

This restricts the cookie to a first-party or same-site context.

https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie/SameSite


Allowed values for the attribute are:

- `Lax`: Cookies are sent when navigating to first-party site
- `Strict`: Cookies are never sent
- `None`: Cookies will always be sent

I think that `Lax` should be a safe choice, but this depends on browser comatibility. Only modern browsers support this: https://caniuse.com/same-site-cookie-attribute

Furthermore and apparently, this is not bullet proof as the attacker can use work arounds e.g. `<link rel='prerender'>` can be exploited: https://tools.ietf.org/html/draft-ietf-httpbis-rfc6265bis-02#section-5.3.7.1

However, keep in mind many web applications accept requests from other domains. In that case, we can't rely solely on the auth token to be transferred via the cookie. In that case the authentication header can be used as an alternate mechanism for specifying the auth token.

**Doesn't Cross Origin Request Sharing (CORS) configuration protect us?**

First of all, CORS only applies to ajax (or XHR) requests. Cross domain form
posting would still work - this is due to backwards compatibility.

As a side note, CORS can be configured to allow certain domains to perform cross
domain requests but it is a security measure that requires the frontend to work
as well i.e. the browser. Furthermore, CORS doesn't send preflight requests for
'simple requests' e.g. GET requests, POST requests with certain values for
Content-Type. So generally speaking, we can't rely on CORS for protection. An
app that has a GET endpoint that is doing state changes behind the scenes could
be exploited even if CORS is configured:

 `simple requests`: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#simple_requests


**How about CSRF Tokens?**

All above measures rely on the browser for providing the security. If the victim
is using an old browser, they are still susceptible to an attack. Furthermore,
if we only rely on CORS for protection, depending on the web application, some
GET endpoints

Hence, as the precautionary measure, we should have server side protection as
well. This can be done by the server generating csrf tokens which should be
stored by the client and should be included for requests. If the CSRF token is
stored in the cookie, then it should be double submitted probably as a header.
Otherwise, the attacker can rely on the csrf token to be auto-submitted as the
cookie, defeating the purpose (`SameSite` attribute for the cookie would make
this difficult though).

https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html#double-submit-cookie
