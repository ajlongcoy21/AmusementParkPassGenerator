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

        print("Guest Test Cases")
        
        amusementPark.createGuest(guestType: .freeChild, birthday: nil)
        amusementPark.createGuest(guestType: .freeChild, birthday: Date().addingTimeInterval(-157784759))
        amusementPark.createGuest(guestType: .freeChild, birthday: Date().addingTimeInterval(-157784760))
        
        
        print("Employee Test Cases")
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "", state: "", zipCode: 0, birthday: nil)
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "", zipCode: 0, birthday: nil)
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 0, birthday: nil)
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil)
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St. apt 1526", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date())
        
        print("Area Access")
        
        amusementPark.displayAreaAccess()
        
        print("Ride Access")
        
        amusementPark.displayRideAccess()

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

