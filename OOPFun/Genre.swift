//
//  Genre.swift
//  OOPFun
//
//  Created by Gina Sprint on 9/16/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

// enum is short for enumeration
// an enum is a named set of options for a value
// ex: months of the year, days of the week, colors
// not an enum: number of students at GU, floating point number
// example where we have an enum for a book genre
enum Genre: String {
    case fantasy = "F"
    case sciencefiction = "SF"
    case nonfiction = "NF"
}
// task: in Book let's add a genre property
// then set book3's genre to .fantasy when we initialize it
