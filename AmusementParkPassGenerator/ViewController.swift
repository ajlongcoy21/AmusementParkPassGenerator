//
//  ViewController.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 2/26/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{


    var amusementPark = AmusementPark()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var myBool = false
        
        /**************************************************************************************************
        Guest Test Case
        
        Create a free child guest that has no birthday. Returns an error
        Create a free child guest that has a birthday but is not younger than 5. Returns an error
        Create a free child guest
        Create a classic guest
        Create a vip guest
        **************************************************************************************************/
        
        print("Guest Test Cases\n")
        
        print("Guest - Free Child Error\n")
        
        amusementPark.createGuest(guestType: .freeChild, birthday: nil)
        
        print("\nGuest - Free Child Error\n")
        
        amusementPark.createGuest(guestType: .freeChild, birthday: Date().addingTimeInterval(-157784761))
        
        print("\nGuest - Free Child OK\n")
        
        amusementPark.createGuest(guestType: .freeChild, birthday: Date().addingTimeInterval(-157784759))
        
        print("\nGuest - Classic OK\n")
        
        amusementPark.createGuest(guestType: .classic, birthday: Date().addingTimeInterval(-157784760))
        
        print("\nGuest - VIP OK\n")
        
        amusementPark.createGuest(guestType: .vip, birthday: Date().addingTimeInterval(-157784760))
        
        /**************************************************************************************************
         Guest Test Case
         
         Swipe Pass at amusement park for all areas
         
         Only areas allowed to enter - Amusement Area
         **************************************************************************************************/
        
        for guest in amusementPark.guestsArray
        {
            print("\n\(guest.guestType)\n")
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.amusementArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.amusementArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.amusementArea) denied\n")
            }
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.kitchenArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.kitchenArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.kitchenArea) denied\n")
            }
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.maintenanceArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.maintenanceArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.maintenanceArea) denied\n")
            }
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.officeArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.officeArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.officeArea) denied\n")
            }
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.rideControlArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.rideControlArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.rideControlArea) denied\n")
            }
            
        }
        
        /**************************************************************************************************
         Guest Test Case
         
         Swipe Pass at amusement park for all rides
         
         rides allowed - All rides
         
         VIP - Can skip lines
         **************************************************************************************************/
        
        for guest in amusementPark.guestsArray
        {
            print("\n\(guest.guestType)\n")
            myBool = amusementPark.swipePass(for: guest, at: nil, at: RideAccess.allRides)
            if myBool
            {
                print("Access to \(RideAccess.allRides) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(RideAccess.allRides) denied\n")
            }
            myBool = amusementPark.swipePass(for: guest, at: nil, at: RideAccess.skipLines)
            if myBool
            {
                print("Access to \(RideAccess.skipLines) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(RideAccess.skipLines) denied\n")
            }
            
        }
        
        /**************************************************************************************************
         Employee Test Case
         
         Create an employee that has no first name. Returns an error
         Create an employee that has no last name. Returns an error
         Create an employee that has no street address. Returns an error
         Create an employee that has no city. Returns an error
         Create an employee that has no state. Returns an error
         Create an employee that has no zip code. Returns an error
         Create an employee that has no birthday. Returns an error
         
         Create a food service employee
         Create a ride service employee
         Create a maintenance employee
         Create a manager employee
         **************************************************************************************************/
        
        print("\nEmployee Test Cases\n")
        
        print("Employee - no first name Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nEmployee - no last name Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nEmployee - no street address Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nEmployee - no city Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nEmployee - no state Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "", zipCode: 0, birthday: nil)
        
        print("\nEmployee - no zip code Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 0, birthday: nil)
        
        print("\nEmployee - no birthday Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil)
        
        print("\nEmployee - Food Service Employee OK\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        
        print("\nEmployee - Ride Service Employee OK\n")
        
        amusementPark.createEmployee(employeeType: .rideServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        
        print("\nEmployee - Maintenance Employee OK\n")
        
        amusementPark.createEmployee(employeeType: .maintenance, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        
        print("\nEmployee - Manager Employee OK\n")
        
        amusementPark.createEmployee(employeeType: .manager, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        
        
        /**************************************************************************************************
         Employee Test Case
         
         Swipe Pass at amusement park for all areas
         
         Food Services
            Amusement Area 
            Kitchen Area
         Ride Services
            Amusement Area
            Ride Control Area
         Maintenance
            Amusement Area
            Kitchen Area
            Ride Control Area
            Maintenance Area
         Manager
            Amusement Area
            Kitchen Area
            Ride Control Area
            Maintenance Area
            Office Area
         
         **************************************************************************************************/
        
        
        for employee in amusementPark.employeeArray
        {
            print("\n\(employee.employeeType)\n")
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.amusementArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.amusementArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.amusementArea) denied\n")
            }
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.kitchenArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.kitchenArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.kitchenArea) denied\n")
            }
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.maintenanceArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.maintenanceArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.maintenanceArea) denied\n")
            }
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.officeArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.officeArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.officeArea) denied\n")
            }
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.rideControlArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.rideControlArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.rideControlArea) denied\n")
            }
            
        }
        
        /**************************************************************************************************
         Employee Test Case
         
         Swipe Pass at amusement park for all rides
         
         rides allowed - All rides
         **************************************************************************************************/
        
        for employee in amusementPark.employeeArray
        {
            print("\n\(employee.employeeType)\n")
            myBool = amusementPark.swipePass(for: employee, at: nil, at: RideAccess.allRides)
            if myBool
            {
                print("Access to \(RideAccess.allRides) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(RideAccess.allRides) denied\n")
            }
            myBool = amusementPark.swipePass(for: employee, at: nil, at: RideAccess.skipLines)
            if myBool
            {
                print("Access to \(RideAccess.skipLines) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(RideAccess.skipLines) denied\n")
            }
            
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

