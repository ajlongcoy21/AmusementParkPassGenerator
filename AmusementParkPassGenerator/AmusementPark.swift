//
//  AmusementPark.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

class AmusementPark
{
    var guestsArray: [Guest]
    var employeeArray: [Employee]
    
    init()
    {
        guestsArray = []
        employeeArray = []
    }
    
    func createGuest(guestType: GuestType, birthday: Date?)
    {
        do
        {
            let newGuest = try Guest(guestType: guestType, birthday: birthday)
            guestsArray.append(newGuest!)
        }
        catch let error
        {
            print(error)
        }
    }
    
    func createEmployee(employeeType: EmployeeType, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?)
    {
        do
        {
            let newEmployee = try Employee(employeeType: employeeType, firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, birthday: birthday)
            employeeArray.append(newEmployee!)
        }
        catch let error
        {
            print(error)
        }
    }
    
    func displayAreaAccess()
    {
        for guest in guestsArray
        {
            guest.guestPass.printAreaAccess()
        }
        
        for employee in employeeArray
        {
            employee.employeePass.printAreaAccess()
        }
    }
    
    func displayRideAccess()
    {
        for guest in guestsArray
        {
            guest.guestPass.printRideAccess()
        }
        
        for employee in employeeArray
        {
            employee.employeePass.printRideAccess()
        }
    }
    
}

