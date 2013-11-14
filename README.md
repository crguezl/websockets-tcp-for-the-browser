Ruby & WebSockets: TCP for the Browser
======================================

[By Ilya Grigorik on December 22, 2009](http://www.igvita.com/2009/12/22/ruby-websockets-tcp-for-the-browser/)

WebSockets are one of the most underappreciated innovations in
HTML5. Unlike local storage, canvas, web workers, or even video
playback, the benefits of the WebSocket API are not immediately
apparent to the end user. In fact, over the course of the past
decade we have invented a dozen technologies to solve the problem
of asynchronous and bi-directional communication between the browser
and the server: AJAX, Comet & HTTP Streaming, BOSH, ReverseHTTP,
WebHooks & PubSubHubbub, and Flash sockets amongst many others.
Having said that, it does not take much experience with any of the
above to realize that each has a weak spot and none solve the
fundamental problem: web-browsers of yesterday were not designed
for bi-directional communication.

WebSockets in HTML5 change all of that as they were designed from
the ground up to be data agnostic (binary or text) with support for
full-duplex communication. WebSockets are TCP for the web-browser.
Unlike BOSH or equivalents, they require only a single connection,
which translates into much better resource utilization for both the
server and the client. Likewise, WebSockets are proxy and firewall
aware, can operate over SSL and leverage the HTTP channel to
accomplish all of the above - your existing load balancers, proxies
and routers will work just fine.

