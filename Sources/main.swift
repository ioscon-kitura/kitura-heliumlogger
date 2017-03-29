import Kitura
import HeliumLogger
import LoggerAPI

// Create a new router
let router = Router()

// Initialize HeliumLogger
Log.logger = HeliumLogger()

// Handle HTTP GET requests to /
router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    Log.info("Route handler for / completed")
    next()
}

// Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: 8090, with: router)

// Start the Kitura runloop (this call never returns)
Kitura.run()

