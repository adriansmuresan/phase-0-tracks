# 9.1 How the Web Works

## Release 0: View HTTP Requests

### What are some common HTTP status codes?

   **1xx Informational**

     * 100 Continue
     * 101 Switching Protocols
     * 102 Processing(WebDAV)
     
   **2xx Success**

     * 200 OK
     * 201 Created
     * 204 No Content

   **3xx Redirection**

     * 300 Multiple Choices
     * 304 Not Modified
     * 302 Found
     * 305 Use Proxy

   **4xx Client Error**

     * 400 Bad Request
     * 401 Unauthorized
     * 403 Forbidden  
     * 404 Not Found
     * 409 Conflict

   **5xx Server Error**

      * 500 Internal Server Error
      * 501 Not Implemented
      * 502 Bad Gateway
      * 503 service Unavailable
      * 504 Gateway Timeout

### What is the difference between a GET request and a POST request? When might each be used?

   **The _GET_ method**

    * Requests data from a specified source
    * GET requests can be cached
    * GET requests remain in the browser history
    * GET requests can be bookmarked
    * GET requests have length restrictions
    * GET requests should never be used when dealing with sensitive data
    * GET requests should be used only to retrieve data

  **The _POST_ method**

   * Submits data to be processed to a specified source
   * POST requests are never cached
   * POST requests do not remain in the browser history
   * POST requests cannot be bookmarked
   * POST requests have no restriction on data length

#### Uses for _GET_ and _POST_

   GET can be used to retrieve a web page and POST can be used to trigger email from a database.

#### What is a cookie? How does it relate to HTTP requests?

   An HTTP Cookie is a piece of data sent from a website and stored in the user's browser in order to remember stateful information about browsing activity, items added to the shopping cart, pages visited in the past. They can also remember previous information entered such as names, addresses, passwords, credit card numbers.

   Cookies are arbitrary pieces of data, usually chosen and first sent by the web server, and stored on the client computer by the web browser. The browser then sends them back to the server with every request, introducing states (memory of previous events) into otherwise stateless HTTP transactions. Without cookies, each retrieval of a web page or component of a web page would be an isolated event, largely unrelated to all other page views made by the user on the website.
