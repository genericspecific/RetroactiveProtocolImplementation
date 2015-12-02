//: Playground - noun: a place where people can play

import UIKit

struct AppDomain{}

class Thing {
    static func doThingOne(input: String) -> String {
        return input + input
    }
}

class Client {
    let t: Thingable.Type
    
    init(t: Thingable.Type) {
        self.t = t
    }
    
    func doThingOne(input: String) -> String {
        return t.doThingOne(input)
    }
}

protocol Thingable {
    static func doThingOne(input: String) -> String
}

class OtherThing: Thingable {
    static func doThingOne(input: String) -> String {
        return "!!!!!\(input) \(input)!!!!"
    }
}

extension Thing: Thingable {}

let c = Client(t: OtherThing.self)
c.doThingOne("hello")

let c2 = Client(t: Thing.self)
c2.doThingOne("hello")
