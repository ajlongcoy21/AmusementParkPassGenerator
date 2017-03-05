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
        
        
        //print("Guest Test Cases")
        
        //amusementPark.createGuest(guestType: .freeChild, birthday: nil)
        //amusementPark.createGuest(guestType: .freeChild, birthday: Date().addingTimeInterval(-157784759))
        amusementPark.createGuest(guestType: .freeChild, birthday: Date().addingTimeInterval(-157784760))
        amusementPark.createGuest(guestType: .classic, birthday: Date().addingTimeInterval(-157784760))
        amusementPark.createGuest(guestType: .vip, birthday: Date().addingTimeInterval(-157784760))
        
        
        //print("Employee Test Cases")
        //amusementPark.createEmployee(employeeType: .foodServices, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        //amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        //amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        //amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "", state: "", zipCode: 0, birthday: nil)
        //amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "", zipCode: 0, birthday: nil)
        //amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 0, birthday: nil)
        //amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil)
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        amusementPark.createEmployee(employeeType: .maintenance, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        amusementPark.createEmployee(employeeType: .manager, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        amusementPark.createEmployee(employeeType: .rideServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        
        //print("\nArea Access\n")
        
        //amusementPark.displayAreaAccess()
        
        //print("\nRide Access\n")
        
        //amusementPark.displayRideAccess()
        
        for guest in amusementPark.guestsArray
        {
            print("\n\(guest.guestType)\n")
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.amusementArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.amusementArea)\n")
                myBool = false
            }
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.kitchenArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.kitchenArea)\n")
                myBool = false
            }
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.maintenanceArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.maintenanceArea)\n")
                myBool = false
            }
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.officeArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.officeArea)\n")
                myBool = false
            }
            myBool = amusementPark.swipePass(for: guest, at: AreaAccess.rideControlArea, at: nil)
            if myBool
            {
                print("\nAccess to \(AreaAccess.rideControlArea)\n")
                myBool = false
            }
            
        }
        
        for employee in amusementPark.employeeArray
        {
            print("\n\(employee.employeeType)\n")
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.amusementArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.amusementArea)\n")
                myBool = false
            }
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.kitchenArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.kitchenArea)\n")
                myBool = false
            }
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.maintenanceArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.maintenanceArea)\n")
                myBool = false
            }
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.officeArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.officeArea)\n")
                myBool = false
            }
            myBool = amusementPark.swipePass(for: employee, at: AreaAccess.rideControlArea, at: nil)
            if myBool
            {
                print("\nAccess to \(AreaAccess.rideControlArea)\n")
                myBool = false
            }
            
        }

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

