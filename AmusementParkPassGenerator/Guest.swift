//
//  Guest.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

/**************************************************************************
 Enumeration Guest Type
 
 Defines the different type of guests that can be at the amusement park
 
 **************************************************************************/

enum GuestType: Int
{
    case classic = 0
    case vip
    case freeChild
    case seasonPassGuest
    case seniorGuest
}

/**************************************************************************
 Enumeration Guest Error
 
 Defines the different type of errors that can occur according to 
 buisness rules
 
 **************************************************************************/

enum GuestError: Error
{
    case invalidGuestType(description: String)
    case noBirthdate(description: String)
    case invalidBirthdate(description: String)
    
    case noFirstName(description: String)
    case noLastName(description: String)
    case noStreetAddress(description: String)
    case noCity(description: String)
    case noState(description: String)
    case noZipCode(description: String)
    case invalidZipCode(description: String)

}

/**************************************************************************
 Class Guest
 
 This is a class that sets up an instance of a guest at the amusement park.
 
 All fields are optional except for guest type, pass and depending on the
 guest type a birthday is needed.
 
 **************************************************************************/

class Guest: Person
{
    var firstName: String?          //First name of guest
    var lastName: String?           //Last name of guest
    var streetAddress: String?      //Street address of guest
    var city: String?               //City of guest
    var state: String?              //State of guest
    var zipCode: Int?               //Zip code of guest
    var birthday: Date?             //Birthday of guest
    var company: String?            //Company of guest
    var guestType: GuestType        //Guest type of guest
    var pass: Pass                  //Pass for the guest with specific area and ride access
    
    /**************************************************************************
     init
     
     This is the default init for the class. Creats an instance of guest for
     amusement park
     
     parameters:
        firstName - Optional
        lastName - Optional
        streetAddress - Optional
        city - Optional
        state - Optional
        birthday - needed if guest type is free child
        company - Optional
        guestType - needed
     
     Returns:
        N/A
     
     **************************************************************************/
    
    init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?, company: String?, guestType: GuestType)
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
        self.guestType = guestType
        
        //Create a pass and setup the pass according to the guest type
        
        self.pass = Pass()
        self.pass.updatePass(entrantType: guestType, projectNumber: nil, companyName: nil)
    }
    
    /**************************************************************************
     convenience init
     
     This is the convienence init for the class. checks the information passed
     in to make sure that it follows the buisness rules.
     
     parameters:
        guestType - needed
        birthday - needed if guest type is free child
     
     returns:
        N/A
     
     throws:
        Guest Errors
     
     **************************************************************************/
    
    convenience init?(guestType: GuestType, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?) throws
    {
        
        //Check the guest type and make sure the buisness ruels are being followed
        
        switch guestType
        {
            //If the guest is a free child
            
            case .freeChild:
                
                //If the birthday is missing, we need to notify the user a birthday needs to be obtained
                
                if birthday == nil
                {
                    throw GuestError.noBirthdate(description: "No birthday was entered. Please enter a valid birthday.")
                }
                
                //If they are not 5 years or younger, we need to notify the user is not eligible for free child
                    
                else
                {
                    let childBirthday = birthday!.addingTimeInterval(157784760) // Add 5 years to birthday
                
                    if childBirthday < Date()
                    {
                        throw GuestError.invalidGuestType(description: "Invalid Birthday. Needs to be 5 years of age or younger.")
                    }
                }
            
            case .seasonPassGuest:
                
                // If zipCode is not an Int throw an error
                
                guard let tempZipCode = zipCode as Int? else
                {
                    throw GuestError.invalidZipCode(description: "Sorry, the zip code is not valid. Please re-enter the zip code of the employee.")
                }
            
                if firstName == "" || firstName == nil
                {
                    throw GuestError.noFirstName(description: "Sorry, there is no first name entered for the guest. Please enter a first name.")
                }
                if lastName == "" || lastName == nil
                {
                    throw GuestError.noLastName(description: "Sorry, there is no last name entered for the guest. Please enter a last name.")
                }
                if streetAddress == "" || streetAddress == nil
                {
                    throw GuestError.noStreetAddress(description: "Sorry, there is no street address entered for the guest. Please enter a street address.")
                }
                if city == "" || city == nil
                {
                    throw GuestError.noCity(description: "Sorry, there is no city entered for the guest. Please enter a city.")
                }
                if state == "" || state == nil
                {
                    throw GuestError.noState(description: "Sorry, there is no state entered for the guest. Please enter a state.")
                }
                if tempZipCode <= 9999 || tempZipCode >= 100000
                {
                    throw GuestError.noZipCode(description: "Sorry, there is no zip code entered for the guest. Please enter a zip code.")
                }
            
            case .seniorGuest:
            
                if firstName == "" || firstName == nil
                {
                    throw GuestError.noFirstName(description: "Sorry, there is no first name entered for the guest. Please enter a first name.")
                }
                if lastName == "" || lastName == nil
                {
                    throw GuestError.noLastName(description: "Sorry, there is no last name entered for the guest. Please enter a last name.")
                }
                
                //If the birthday is missing, we need to notify the user a birthday needs to be obtained
                
                if birthday == nil
                {
                    throw GuestError.noBirthdate(description: "No birthday was entered. Please enter a valid birthday.")
                }
                    
                    //If they are not 65 years or older, we need to notify the user is not eligible for senior guests
                    
                else
                {
                    let seniorBirthday = birthday!.addingTimeInterval(2051201880) // Add 65 years to birthday
                    
                    if seniorBirthday > Date()
                    {
                        throw GuestError.invalidGuestType(description: "Invalid Birthday. Needs to be 65 years of age or older.")
                    }
            }
            
            case .classic, .vip:
                
                break
        }
        
        
        
        // Call default initializer
        
        self.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, birthday: birthday, company: nil, guestType: guestType)
    }
}





