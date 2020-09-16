//
//  main.swift
//  OOPFun
//
//  Created by Gina Sprint on 9/8/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

// class: a collection of state and behavior that completely describes something
// state: properties
// behavior: methods
// object: is an instance of a class

// there are 3 types of objects in Swift
// 1. class
// 2. struct
// 3. enum

// classes are pass by reference!!

func bookClassDriver() {
    var book1 = Book(ISBN: "30495-3452", title: "Harry Potter and the Sorcerer's Stone", author: "JK Rowling", numPages: 345)
    
    print(book1)
    // declare another Book reference to demonstrate
    // that classes are reference types
    var book2 = book1 // if Book is a struct, this makes a copy
    book2.title = "Harry Potter and the Chamber of Secrets"
    print(book1)
    print(book2)
    
    var book3 = Book(ISBN: "30495-XXX", title: "Harry Potter and the Prisoner of Azkaban", author: "JK Rowling", numPages: 400, price: 10.0, genre: .fantasy)
    print(book3)
    // print(book1 == book3)
    print(book3.price)
    book3.discountPrice(withPercent: 20)
    print(book3.price)
    print(book3.genre)
    print(book3.genre.rawValue)
    
    // switch statements
    // they go hand in hand with enums
    // switch statements must be exhaustive
    switch book3.genre {
    case .fantasy:
        print("the genre is fantasy")
        //fallthrough
    case .sciencefiction:
        print("the genre is sci-fi")
    case .nonfiction:
        print("the genre is non-fiction")
    }
    // there is an implicit break at the end of each case
    // use the fallthrough keyword if you don't want to break
    // you can ranges
    let x = 100
    switch x {
    case 0..<10:
        print("x is 0 through 9")
    case 10..<20:
        print("x is 10 through 19")
    default:
        print("x is some other value")
    }
}

bookClassDriver()
