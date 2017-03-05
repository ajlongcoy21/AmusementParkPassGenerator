//
//  Person.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

/**************************************************************************
 Protocol Person
 
 Defines what requirements are needed in a person
 
**************************************************************************/

protocol Person
{
    var firstName: String? { get set }
    var lastName: String? { get set }
    var streetAddress: String? { get set }
    var city: String? { get set }
    var state: String? { get set }
    var zipCode: Int? { get set }
    var birthday: Date? { get }
    var company: String? { get set }
    
}
