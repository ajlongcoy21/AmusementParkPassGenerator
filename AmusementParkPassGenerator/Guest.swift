//
//  Guest.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

enum GuestType
{
    case classic
    case vip
    case freeChild
}

class GuestClassic: Person
{
    var firstName: String?
    var lastName: String?
    var streetAddress: String?
    var city: String?
    var zipCode: Int?
    var birthday: Date?
    var visitDay: Date?
    var company: String?
    
    init()
    {
        
    }
}


