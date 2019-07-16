//
//  firstClass.swift
//  myFirstApp
//
//  Created by Elaine Chen on 7/16/19.
//  Copyright © 2019 Elaine Chen. All rights reserved.
//

import Foundation

class meClass {
    var name : String //hello it's a property not variable
    init(name: String) {
        self.name = name
    }
    
//func is a method here!
//    func printName() {
//        print(self.name)
//    }
}

class aSecondClass : meClass{
    //extend meClass here!
    //this inherits from meClass
}

struct meStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}



