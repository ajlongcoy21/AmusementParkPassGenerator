//
//  AmusementPark.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation
import UIKit

class AmusementPark
{
    // Declare variables that are in the amusement park
    
    var guestsArray: [Guest]
    var employeeArray: [Employee]
    var passError: Bool
    
    /**************************************************************************
     init
     
     This is the default init for the class. Creats an instance of
     amusement park
     
     parameters:
        N/A
     
     Returns:
        N/A
     
     **************************************************************************/
    
    init()
    {
        guestsArray = []    //Stores an array of guests and their information
        employeeArray = []  //Stores an array of employees and their information
        passError = false   //Identifies if the most recent attempt to generate a pass had errors
    }
    
    /**************************************************************************
     createGuest
     
     This function will attempt to create a guest. If there are errors that 
     appear during the creation of the guest, it will print the error to the
     console. this will be modified to display a message to the user later.
     
     parameters:
        guestType
        birthday
     
     Returns:
        N/A
     
     **************************************************************************/
    
    func createGuest(guestType: GuestType, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?)
    {
        // Create a guest according to the variables passed in.
        
        do
        {
            let newGuest = try Guest(guestType: guestType, firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, birthday: birthday)
            
            guestsArray.append(newGuest!)
            
            passError = false
            
        }
        catch GuestError.noBirthdate(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch GuestError.invalidGuestType(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch GuestError.invalidBirthdate(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch GuestError.invalidZipCode(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch GuestError.noCity(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch GuestError.noFirstName(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch GuestError.noLastName(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch GuestError.noState(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch GuestError.noStreetAddress(let description)
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: description)
            passError = true
        }
        catch let error
        {
            displayAlert(alertTitle: "Guest Pass Error", alertMessage: "\(error)")
            passError = true
        }
    }
    
    /**************************************************************************
     createEmployee
     
     This function will attempt to create an employee. If there are errors that
     appear during the creation of the employee, it will print the error to the
     console. this will be modified to display a message to the user later.
     
     parameters:
        employeeType
        firstName
        lastName
        streetAddress
        city
        state
        zipCode
        birthday
     
     Returns:
        N/A
     
     **************************************************************************/
    
    func createEmployee(employeeType: EmployeeType, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, birthday: Date?, company: String?, projectNumber: Int?, dateOfVisit: Date?)
    {
        
        // Create a guest according to the variables passed in.
        
        do
        {
            let newEmployee = try Employee(employeeType: employeeType, firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, birthday: birthday, company: company, projectNumber: projectNumber, dateOfVisit: dateOfVisit)
            
            employeeArray.append(newEmployee!)
            passError = false
        }
        catch EmployeeError.invalidBirthdate(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.invalidCompany(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.invalidDateOfVisit(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.invalidEmployeeType(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.invalidProjectNumber(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.invalidZipCode(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.noBirthdate(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.noCity(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.noDateOfVisit(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.noFirstName(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.noLastName(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.noState(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.noStreetAddress(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch EmployeeError.noZipCode(let description)
        {
            displayAlert(alertTitle: "Employee Pass Error", alertMessage: description)
            passError = true
        }
        catch let error
        {
            print(error)
            passError = true
        }
    }
    
    /**************************************************************************
     accessSwipePass
     
     This function will swipe the pass of the entrant trying to enter the area
     or ride. If they have the right type of membership, they will be granted
     access. If not they will be denied.
     
     parameters:
        entrant - Optional type so we can pass both guests and employees in
        area - to swipe at an area
        ride - to swipe at a ride
     
     Returns:
        bool - if access is granted or denied
     
     **************************************************************************/
    
    func accessSwipePass(for entrant: Optional<Any>, at area: AreaAccess?, at ride: RideAccess?) -> Bool
    {
        // Check to make sure they are requesting access to an area or ride
        
        if area == nil && ride == nil
        {
                print("No ride or area access requested")
                return false
        }
        
        // If they are requesting access to an area
            
        else if ride == nil
        {
            switch entrant // Look to see what type of entrant is requesting access
            {
                case is Guest:
                    for eachArea in (entrant as! Guest).pass.areaAccessArray
                    {
                        if eachArea == area // If they have access to the area return true
                        {
                            return true
                        }
                    }
                case is Employee:
                    for eachArea in (entrant as! Employee).pass.areaAccessArray
                    {
                        if eachArea == area // If they have access to the area return true
                        {
                            return true
                        }
                    }
                default:
                    break
            }
        }
            
        // If they are requesting access to ride
            
        else if area == nil
        {
            switch entrant
            {
            case is Guest:
                for eachRide in (entrant as! Guest).pass.rideAccessArray
                {
                    if eachRide == ride // If they have access to the ride return true
                    {
                        return true
                    }
                }
            case is Employee:
                for eachRide in (entrant as! Employee).pass.rideAccessArray
                {
                    if eachRide == ride // If they have access to the ride return true
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
    
    /**************************************************************************
     discountSwipePass
     
     This function will swipe the pass of the entrant trying to get 
     a discount. It will return the discount that should be applied for the user.
     
     parameters:
     entrant - Optional type so we can pass both guests and employees in
     
     Returns:
     tuple (Int, Int)- food and merchandise discount
     
     **************************************************************************/
    
    func discountSwipePass(for entrant: Optional<Any>) -> (Int, Int)
    {
        
        switch entrant // Look to see what type of entrant is requesting access
        {
        case is Guest:
            return ((entrant as! Guest).pass.discountFood, (entrant as! Guest).pass.discountMerchandise)
        case is Employee:
            return ((entrant as! Employee).pass.discountFood, (entrant as! Employee).pass.discountMerchandise)
        default:
            return (-1,-1)
        }
    }
            
    
    
    /**************************************************************************
     displayAreaAccess
     
     This function will display the area access right for each guest and employee
     logged in the amusement park and prints to the console.
     
     Used for debugging purposes
     
     parameters:
        None
     
     Returns:
        None
     
     **************************************************************************/
    
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
    
    /**************************************************************************
     displayRideAccess
     
     This function will display the ride access right for each guest and employee
     logged in the amusement park and prints to the console.
     
     Used for debugging purposes
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
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
    
    /**************************************************************************
     displayAlert
     
     This function will display an alert to the user.
     
     parameters:
     alertTitle
     alertMessage
     
     Returns:
     None
     
     **************************************************************************/
    
    func displayAlert(alertTitle: String, alertMessage: String)
    {
        // Create alert controller
        
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        
        // Add an action to the alert controller called Dismiss
        
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        // Setup the view for the alert to be displayed to the user
        
        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        alertWindow.rootViewController = UIViewController()
        alertWindow.windowLevel = UIWindowLevelAlert + 1;
        alertWindow.makeKeyAndVisible()
        alertWindow.rootViewController?.present(alertController, animated: true, completion: nil)
        
    }
    
    /**************************************************************************
     getLastGuest
     
     This function will return the last guest created successfully.
     
     parameters:
     None
     
     Returns:
     Guest
     
     **************************************************************************/
    
    func getLastGuest() -> Guest?
    {
        // Check to see if there is a guest to return
        
        if guestsArray.count > 0
        {
            return guestsArray[guestsArray.count-1]
        }
        
        // If there is no guest return nil
        
        return nil
    }
    
    /**************************************************************************
     getLastEmployee
     
     This function will return the last employee created successfully.
     
     parameters:
     None
     
     Returns:
     Guest
     
     **************************************************************************/
    
    func getLastEmployee() -> Employee?
    {
        // Check to see if there is a employee to return
        
        if employeeArray.count > 0
        {
            return employeeArray[employeeArray.count-1]
        }
        
        // If there is no employee return nil
        
        return nil
    }
}

