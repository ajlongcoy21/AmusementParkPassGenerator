//
//  Employee.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

enum State
{
    case alabama
    case alaska
    case arizona
    case arkansas
    case california
    case colorado
    case connecticut
    case delaware
    case florida
    case georgia
    case hawaii
    case idaho
    case illinois
    case indiana
    case iowa
    case kansas
    case kentucky
    case louisiana
    case maine
    case maryland
    case massachusetts
    case michigan
    case minnesota
    case mississippi
    case missouri
    case montana
    case nebraska
    case nevada
    case new_hampshire
    case new_jersey
    case new_mexico
    case new_york
    case north_carolina
    case north_dakota
    case ohio
    case oklahoma
    case oregon
    case pennsylvania
    case rhode_island
    case south_carolina
    case south_dakota
    case tennessee
    case texas
    case utah
    case vermont
    case virginia
    case washington
    case west_virginia
    case wisconsin
    case wyoming
}

enum EmployeeType: Int
{
    case foodServices = 0
    case rideServices
    case maintenance
    case manager
}

enum EmployeeError: Error
{
    case invalidEmployeeType(description: String)
    case noFirstName(description: String)
    case noLastName(description: String)
    case noStreetAddress(description: String)
    case noCity(description: String)
    case noState(description: String)
    case noZipCode(description: String)
    case invalidZipCode(description: String)
    case noBirthdate(description: String)
    case invalidBirthdate(description: String)
}

extension Person
{

}

class Employee: Person
{
    var firstName: String?
    var lastName: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zipCode: Int?
    var birthday: Date?
    var company: String?
    var employeeType: EmployeeType
    var employeePass: Pass
    
    init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?, company: String?, employeeType: EmployeeType)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.zipCode = zipCode
        self.birthday = birthday
        self.company = company
        self.employeeType = employeeType
        self.employeePass = Pass()
        self.employeePass.updatePass(guestType: nil, employeeType: employeeType)
    }
    
    convenience init?(employeeType: EmployeeType, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?) throws
    {
        let tempEmployeeType = employeeType
        let tempFirstName = firstName
        let tempLastName = lastName
        let tempStreetAddress = streetAddress
        let tempCity = city
        let tempState = state
        guard let tempZipCode = zipCode! as Int? else
        {
            throw EmployeeError.invalidZipCode(description: "Sorry, the zip code is not valid. Please re-enter the zip code of the employee.")
        }
        let tempBirthday = birthday
        
        switch tempEmployeeType
        {
            case .foodServices, .rideServices, .maintenance, .manager:
            
                if tempFirstName == "" || tempFirstName == nil
                {
                    throw EmployeeError.noFirstName(description: "Sorry, there is no first name entered for the employee. Please enter a first name.")
                }
                if tempLastName == "" || tempLastName == nil
                {
                    throw EmployeeError.noLastName(description: "Sorry, there is no last name entered for the employee. Please enter a last name.")
                }
                if tempStreetAddress == "" || tempStreetAddress == nil
                {
                    throw EmployeeError.noStreetAddress(description: "Sorry, there is no street address entered for the employee. Please enter a street address.")
                }
                if tempCity == "" || tempCity == nil
                {
                    throw EmployeeError.noCity(description: "Sorry, there is no city entered for the employee. Please enter a city.")
                }
                if tempState == "" || tempState == nil
                {
                    throw EmployeeError.noState(description: "Sorry, there is no state entered for the employee. Please enter a state.")
                }
                if tempZipCode <= 9999 || tempZipCode >= 100000
                {
                    throw EmployeeError.noZipCode(description: "Sorry, there is no zip code entered for the employee. Please enter a zip code.")
                }
                if tempBirthday == nil
                {
                    throw EmployeeError.noBirthdate(description: "No birthday was entered. Please enter a valid birthday.")
                }
        }
        
        self.init(firstName: tempFirstName, lastName: tempLastName, streetAddress: tempStreetAddress, city: tempCity, state: tempState, zipCode: tempZipCode, birthday: tempBirthday, company: "Amusement Park Name", employeeType: tempEmployeeType)
    }
    
}




