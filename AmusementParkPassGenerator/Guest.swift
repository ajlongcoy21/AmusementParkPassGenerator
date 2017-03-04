//
//  Guest.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

enum GuestType: Int
{
    case classic = 0
    case vip
    case freeChild
}

enum GuestError: Error
{
    case invalidGuestType(description: String)
    case noBirthdate(description: String)
    case invalidBirthdate(description: String)
}

extension Person
{

}

class Guest: Person
{
    var firstName: String?
    var lastName: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zipCode: Int?
    var birthday: Date?
    var company: String?
    var guestType: GuestType
    var guestPass: Pass
    
    init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?, company: String?, guestType: GuestType)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.birthday = birthday
        self.company = company
        self.guestType = guestType
        self.guestPass = Pass()
        self.guestPass.updatePass(guestType: guestType, employeeType: nil)
    }
    
    convenience init?(guestType: GuestType, birthday: Date?) throws
    {
        let tempGuestType = guestType
        let tempBirthday = birthday
        
        switch tempGuestType
        {
            case .freeChild:
                if tempBirthday == nil
                {
                    throw GuestError.noBirthdate(description: "No birthday was entered. Please enter a valid birthday.")
                }
                else
                {
                    let childBirthday = tempBirthday!.addingTimeInterval(157784760)
                
                    if childBirthday > Date()
                    {
                        throw GuestError.invalidGuestType(description: "Invalid Birthday. Needs to be 5 years of age or younger.")
                    }
                }

            case .classic, .vip:
                break
        }
        
        self.init(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, birthday: tempBirthday, company: nil, guestType: tempGuestType)
    }
}





