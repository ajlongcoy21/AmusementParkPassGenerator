//
//  Person.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

protocol Person
{
    var firstName: String? { get }
    var lastName: String? { get }
    var streetAddress: String? { get set }
    var city: String? { get set }
    var zipCode: Int? { get set }
    var birthday: Date? { get }
    var visitDay: Date? { get set }
    var company: String? { get set }
    
}
