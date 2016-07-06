9.1 How the Web Works

RELEASE 0

2. What are some common HTTP status codes?

  1xx: Informational.
  2xx: Success.
  3xx: Redirection.
  4xx: Client Error.
  5xx: Server Error.

  full list: https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html

3. What is the difference between a GET request and a POST request? When might each be used?

POST requests supply additional data from the client to the server. GET requests have all the data in the URL. GET requests must use ASKII characters. POST requests are more difficult to hack. Full list of differences: http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests

5. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A client-side storage method. (For instance, a user can remain logged into their account) When receiving an HTTP request, a server can send a "Set-Cookie" header with the response, and subsequent requests to the same server will include a "Cookie HTTP" header.