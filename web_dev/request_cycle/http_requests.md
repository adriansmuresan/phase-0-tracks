# 9.1 How the Web Works

## Release 0: View HTTP Requests
 ### What are some common HTTP status codes?

   ** 1xx Informational**
     * 100 Continue
     * 101 Switching Protocols
     * 102 Processing(WebDAV)
   ** 2xx Success**
     * 200 OK
     * 201 Created
     * 204 No Content
   ** 3xx Redirection**
     * 300 Multiple Choices
     * 304 Not Modified
     * 302 Found
     * 305 Use Proxy
   ** 4xx Client Error **
     * 400 Bad Request
     * 401 Unauthorized
     * 403 Forbidden  
     * 404 Not Found
     * 409 Conflict
   ** 5xx Server Error **
      * 500 Internal Server Error
      * 501 Not Implemented
      * 502 Bad Gateway
      * 503 service Unavailable
      * 504 Gateway Timeout

  ### What is the difference between a GET request and a POST request? When might each be used?
   ** The _GET_ method **
    * Requests data from a specified source
    * GET requests can be cached
    * GET requests remain in the browser history
    * GET requests can be bookmarked
    * GET requests have length restrictions
    * GET requests should never be used when dealing with sensitive data
    * GET requests should be used only to retrieve data

  ** The _POST_ method **
   * Submits data to be processed to a specified source
   * POST requests are never cached
   * POST requests do not remain in the browser history
   * POST requests cannot be bookmarked
   * POST requests have no restriction on data length

   ### Uses for _GET_ and _POST_

   GET can be used to retrieve a web page and POST can be used to trigger email from a database.
