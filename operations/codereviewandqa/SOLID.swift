import UIKit

//Single Responsibility Principle
/*
 A class should only have a single responsibility.
 In the below example, emailIsValid is not specific to a Person, and should be moved to a new class, such as an EmailValidator.
 Person will then just have one function, and satisfy this principle.
 */
struct Person {
    let firstName: String
    let lastName: String
    let email: String
    func emailIsValid(email: String) -> Bool {
        return email.contains("@") && email.contains(".com")
    }
}


//Open Closed Principle
/*
 Entities should be open for extension, but closed for modification.
 In the below example, the PriceCalculator is not closed for modification as it must be modified if we want to add in a new item.
 Instead, make items conform to a protocol PriceCalculating, and implement a function to calculate the price.
 PriceCalculator can then take an array of PriceCalculating, and determine the total by calling the function on each item.
 */
struct House {
    var rooms: Int
    var areaMultiplier: Int
}
struct Car {
    var initialCost: Int
    var age: Int
}

class PriceCalculator {
    func price(ofItems items: [Any]) -> Int {
        var total = 0
        for item in items {
            if let house = item as? House {
                total += house.rooms * house.areaMultiplier
            } else if let car = item as? Car {
                total += car.initialCost - (car.age*100)
            }
        }
        return total
    }
}


//Liskov's Substitution Principle
/*
 Objects in a program should be replaceable with instances of their subtypes without altering correctness.
 Setting the rectangle's height alters it's width, and breaks the rectangle, failing the Liskov Substitution Test.
 */
class Rectangle {
    var width: Int
    var height: Int
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}
class Square: Rectangle {
    override var width: Int {
        didSet {
            height = width
        }
    }
    override var height: Int {
        didSet {
            width = height
        }
    }
}

var rectangle = Square(width: 40, height: 10)
rectangle.height = 20
print(rectangle.width)


//Interface Segregation Principle
/*
 Many client-specific interfaces are better than one general-purpose interface.
 If the below protocols were combined, an employee would have to implement stubs for unnecessary methods.
 */
protocol SecurityProviding {
    func provideSecurity()
}

protocol AdminProviding {
    func provideAdmin()
}

struct SecurityGuard: SecurityProviding {
    func provideSecurity() { }
}
struct Receptionist: AdminProviding {
    func provideAdmin() { }
}


//Dependency Inversion
/*
 One should depend upon abstractions, not concretions.
 The higher level abstraction layers must provide the interfaces that the less abstracted code must use.
 Rather than User creating its own repository, it is passed to it.
 User now only has to depend upon an abstraction (Repository)
 The (high level) module creating the (low level) User now has flexibility of how User functions.
 */
struct User {
    let repository: Repository
    func add() {
        repository.add(user: self)
    }
}

protocol Repository {
    func add(user: User)
}
struct Database: Repository {
    func add(user: User) {
        print("User added to database")
    }
}
struct Backend: Repository {
    func add(user: User) {
        print("User added to backend")
    }
}

let user = User(repository: Backend())
user.add()
