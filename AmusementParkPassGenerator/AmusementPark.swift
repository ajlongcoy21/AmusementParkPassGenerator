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
    
    func swipePass(for entrant: Optional<Any>, at area: AreaAccess?, at ride: RideAccess?) -> Bool
    {
        
        if area == nil && ride == nil
        {
                print("No ride or area access requested")
                return false
        }
        else if ride == nil
        {
            switch entrant
            {
                case is Guest:
                    for eachArea in (entrant as! Guest).pass.areaAccessArray
                    {
                        if eachArea == area
                        {
                            return true
                        }
                    }
                case is Employee:
                    for eachArea in (entrant as! Employee).pass.areaAccessArray
                    {
                        if eachArea == area
                        {
                            return true
                        }
                    }
                default:
                    break
            }
        }
        else if area == nil
        {
            switch entrant
            {
            case is Guest:
                for eachRide in (entrant as! Guest).pass.rideAccessArray
                {
                    if eachRide == ride
                    {
                        return true
                    }
                }
            case is Employee:
                for eachRide in (entrant as! Employee).pass.rideAccessArray
                {
                    if eachRide == ride
                    {
                        return true
                    }
                }
            default:
                break
            }
        }
        else
        {
            return false
        }
        
        return false
    }
    
    func displayAreaAccess()
    {
        for guest in guestsArray
        {
            guest.pass.printAreaAccess()
        }
        
        for employee in employeeArray
        {
            employee.pass.printAreaAccess()
        }
    }
    
    func displayRideAccess()
    {
        for guest in guestsArray
        {
            guest.pass.printRideAccess()
        }
        
        for employee in employeeArray
        {
            employee.pass.printRideAccess()
        }
    }
    
}

