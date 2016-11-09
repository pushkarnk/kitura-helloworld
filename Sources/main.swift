import Kitura

let router = Router()
router.get("/hello") { _, response, _ in 
    try response.status(.OK).send("Hello, World!").end()
}

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
