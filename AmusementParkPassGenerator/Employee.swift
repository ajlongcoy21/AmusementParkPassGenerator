//
//  Employee.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

/**************************************************************************
 Enumeration Employee Type
 
 Defines the different type of employees that can be at the amusement park
 
 **************************************************************************/

enum EmployeeType: Int
{
    case foodServices = 0
    case rideServices
    case maintenance
    case manager
    case contract
    case vendor
}

/**************************************************************************
 Enumeration Employee Error
 
 Defines the different type of errors that can occur according to
 buisness rules
 
 **************************************************************************/

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
    
    case invalidProjectNumber(description: String)
    case noDateOfVisit(description: String)
    case invalidDateOfVisit(description: String)
    case invalidCompany(description: String)
}

/**************************************************************************
 Class Employee
 
 This is a class that sets up an instance of a employee at the amusement park.
 
 All fields are needed except company which is setup as a default value.
 
 **************************************************************************/

class Employee: Person
{
    var firstName: String?          //First name of employee
    var lastName: String?           //Last name of employee
    var streetAddress: String?      //Street address of employee
    var city: String?               //City of employee
    var state: String?              //State of employee
    var zipCode: Int?               //Zip code of employee
    var birthday: Date?             //Birthday of employee
    var dateOfVisit: Date?          //Date of visit of employee
    var company: String?            //Company of employee
    var projectNumber: Int?         //Project number employee is working on
    var employeeType: EmployeeType  //employee type of employee
    var pass: Pass                  //Pass for the employee with specific area and ride access
    
    /**************************************************************************
     init
     
     This is the default init for the class. Creats an instance of guest for
     amusement park
     
     parameters:
        firstName - needed
        lastName - needed
        streetAddress - needed
        city - needed
        state - needed
        birthday - needed
        company - needed
        employeeType - needed
     
     Returns:
        N/A
     
     **************************************************************************/
    
    init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?, company: String?, projectNumber: Int?, dateOfVisit: Date?, employeeType: EmployeeType)
    {
        //Initialize values
        
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.birthday = birthday
        self.company = company
        self.projectNumber = projectNumber
        self.dateOfVisit = dateOfVisit
        self.employeeType = employeeType
        
        //Create a pass and setup the pass according to the employee type
        
        self.pass = Pass()
        self.pass.updatePass(entrantType: employeeType, projectNumber: projectNumber, companyName: company)
    }
    
    /**************************************************************************
     convenience init
     
     This is the convienence init for the class. checks the information passed
     in to make sure that it follows the buisness rules.
     
     parameters:
        firstName - needed
        lastName - needed
        streetAddress - needed
        city - needed
        state - needed
        birthday - needed
        company - needed
        employeeType - needed
     
     returns:
        N/A
     
     throws:
        Employee Errors
     
     **************************************************************************/
    
    convenience init?(employeeType: EmployeeType, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?, company: String?, projectNumber: Int?, dateOfVisit: Date?) throws
    {
        
        let calendar = Calendar.current

        // If zipCode is not an Int throw an error
        
        guard let tempZipCode = zipCode! as Int? else
        {
            throw EmployeeError.invalidZipCode(description: "Sorry, the zip code is not valid. Please re-enter the zip code of the employee.")
        }
        
        //Check the employee type and make sure the buisness ruels are being followed
        
        switch employeeType
        {
            case .foodServices, .rideServices, .maintenance, .manager:
            
                if firstName == "" || firstName == nil
                {
                    throw EmployeeError.noFirstName(description: "Sorry, there is no first name entered for the employee. Please enter a first name.")
                }
                if lastName == "" || lastName == nil
                {
                    throw EmployeeError.noLastName(description: "Sorry, there is no last name entered for the employee. Please enter a last name.")
                }
                if streetAddress == "" || streetAddress == nil
                {
                    throw EmployeeError.noStreetAddress(description: "Sorry, there is no street address entered for the employee. Please enter a street address.")
                }
                if city == "" || city == nil
                {
                    throw EmployeeError.noCity(description: "Sorry, there is no city entered for the employee. Please enter a city.")
                }
                if state == "" || state == nil
                {
                    throw EmployeeError.noState(description: "Sorry, there is no state entered for the employee. Please enter a state.")
                }
                if tempZipCode <= 9999 || tempZipCode >= 100000
                {
                    throw EmployeeError.noZipCode(description: "Sorry, there is no zip code entered for the employee. Please enter a zip code.")
                }
                if birthday == nil
                {
                    throw EmployeeError.noBirthdate(description: "No birthday was entered. Please enter a valid birthday.")
                }
            
            case .contract:
            
                if firstName == "" || firstName == nil
                {
                    throw EmployeeError.noFirstName(description: "Sorry, there is no first name entered for the employee. Please enter a first name.")
                }
                if lastName == "" || lastName == nil
                {
                    throw EmployeeError.noLastName(description: "Sorry, there is no last name entered for the employee. Please enter a last name.")
                }
                if streetAddress == "" || streetAddress == nil
                {
                    throw EmployeeError.noStreetAddress(description: "Sorry, there is no street address entered for the employee. Please enter a street address.")
                }
                if city == "" || city == nil
                {
                    throw EmployeeError.noCity(description: "Sorry, there is no city entered for the employee. Please enter a city.")
                }
                if state == "" || state == nil
                {
                    throw EmployeeError.noState(description: "Sorry, there is no state entered for the employee. Please enter a state.")
                }
                if tempZipCode <= 9999 || tempZipCode >= 100000
                {
                    throw EmployeeError.noZipCode(description: "Sorry, there is no zip code entered for the employee. Please enter a zip code.")
                }
                if projectNumber! != 1001 && projectNumber! != 1002 && projectNumber! != 1003 && projectNumber! != 2001 && projectNumber! != 2002
                {
                    throw EmployeeError.invalidProjectNumber(description: "Invalid project number enetered. Please enter a correct project number.")
                }
            
            case .vendor:
            
                if firstName == "" || firstName == nil
                {
                    throw EmployeeError.noFirstName(description: "Sorry, there is no first name entered for the employee. Please enter a first name.")
                }
                if lastName == "" || lastName == nil
                {
                    throw EmployeeError.noLastName(description: "Sorry, there is no last name entered for the employee. Please enter a last name.")
                }
                if birthday == nil
                {
                    throw EmployeeError.noBirthdate(description: "No birthday was entered. Please enter a valid birthday.")
                }
                if company != "Acme" && company != "Orkin" && company != "Fedex" && company != "NW Electrical"
                {
                    throw EmployeeError.invalidCompany(description: "Invalid Company. Please enter a valid company")
                }
                if dateOfVisit == nil
                {
                    throw EmployeeError.noDateOfVisit(description: "No date of visit was entered. Please enter a date of visit")
                }
            
                //If the date of visit is in the past
                    
                else
                {
                    let tempDateOfVisit = dateOfVisit!.addingTimeInterval(0) // subtract one day to the visit
                    
                    if !calendar.isDate(tempDateOfVisit, equalTo: Date(), toGranularity:.day)
                    {
                        throw EmployeeError.invalidDateOfVisit(description: "Date needs to be today or a future date.")
                    }
                }
        }
        
        // Call default initializer
        
        self.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: tempZipCode, birthday: birthday, company: company, projectNumber: projectNumber, dateOfVisit: dateOfVisit, employeeType: employeeType)
        
        
    }
    
}




