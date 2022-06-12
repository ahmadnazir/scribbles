OAuth 2.0 vs OpenID Connect
===========================

.. post:: 17/09/2019
   :tags: identity

These are different tools for different jobs, you can use both of them at the same time:

- OAuth was designed for authorization
- OpenID Connect used OAuth to provide authentication

Really good summary of what these technologies do by Nate Barbettini: https://www.youtube.com/watch?v=996OiexHze0
Speak deck slides: https://speakerdeck.com/nbarbettini/oauth-and-openid-connect-in-plain-english

From an implementation point of view, when you authenticate yourself against an
Authorization server (google, facebook, github, etc), the `id_token` identifies
you and the `access_token` authorizes you. In experience, I have seen them to be
exactly the same but they can differ because they serve difference purposes.
