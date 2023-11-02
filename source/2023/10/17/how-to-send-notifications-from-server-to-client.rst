How to send notifications from server to client?
================================================

.. post:: Oct 17, 2023
   :tags: architecture

There are 3 ways of getting notified by the server:

- Polling: client keeps checking in
- Websockets: Bi-directional connection between server and client
- Server Side Events: One directional connection - from server to client


Polling is the simplest but it doesn't scale as the client need to know about the active processes and check-in with the server to get an update.

WS and SSE are more interesting in that sense - but the question is how can the server inform the relevant clients instead of broadcasting the event e.g. if something happened for `John`, the server shouldn't notify `Jane` or anybody else. Consider this:

Many clients connect to an http server
- The server is a group of nodes (i.e. Node A, Node B, etc) behind a load balancer
- A client subscribes to an event stream using server-side-events (e.g. GET /event-stream) and gets connected to Node A
- The same client schedules a job (e.g. POST /prepare-zip) that is a heavy process and needs to be handled asynchronously. This request happens to land with Node B randomly
- Once Node B finishes, we would like to notify the client - but only Node A can do it as it is maintaining the connection with the client.

How do we do that?

- Do we broadcast from Node B to all other nodes hoping that the relevant node will pick it up? If we use a queue for broadcasting, then all the nodes will be polling for it (including Node B) and most will reject the messages because it is only meant for Node A. Also, it seems like we are mixing responsibilities i.e. serving http requests, and processing events in the queue.
- Do we keep track of the the active connections in a shared store/db e.g. so that we can notify the relevant server?

This requires that we have a broker that supports pub/sub messaging. Nodes can subscribe to channels and listen to changes.

Reference
---------

I asked this question on stackoverflow as well: https://stackoverflow.com/questions/77319044/scaling-with-server-side-events

