import Vapor
import Fluent

/// Register your application's routes here.
public func routes(_ router: Router) throws {
//    // Basic "It works" example
//    router.get { req in
//        return "It works!"
//    }
//    
//    // Basic "Hello, world!" example
//    router.get("hello") { req in
//        return "Hello, world!"
//    }
    
    // Example of configuring a controller
    let acronymController = AcronymsController()
    try router.register(collection: acronymController)
    
    let usersController = UsersController()
    try router.register(collection: usersController)
    
    let categoriesController = CategoriesController()
    try router.register(collection: categoriesController)
    
    let websiteController = WebsiteController()
    try router.register(collection: websiteController)
    
    let imperialController = ImperialController()
    try router.register(collection: imperialController)
}
