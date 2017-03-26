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

    @IBOutlet weak var guestButton: UIButton!
    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var vendorButton: UIButton!
    


    @IBOutlet weak var entrantButton1: UIButton!
    @IBOutlet weak var entrantButton2: UIButton!
    @IBOutlet weak var entrantButton3: UIButton!
    @IBOutlet weak var entrantButton4: UIButton!
    @IBOutlet weak var entrantButton5: UIButton!
    
    @IBOutlet weak var entrantView: UIStackView!
    
    
    @IBAction func entrantTypeSelected(_ sender: UIButton)
    {
        //let buttonID = sender.currentTitle! as String
        
        switch sender.tag
        {
        case 0:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
            sender.setTitleColor(UIColor.white, for: .normal)
            
            self.enableButtons()
            self.unhideButtons()
            self.makeButtonsGray()
                
            self.entrantButton1.setTitleColor(UIColor.white, for: .normal)
                
            self.entrantButton1.setTitle("Classic", for: .normal)
            self.entrantButton2.setTitle("VIP", for: .normal)
            self.entrantButton3.setTitle("Child", for: .normal)
            self.entrantButton4.setTitle("Season Pass", for: .normal)
            self.entrantButton5.setTitle("Senior", for: .normal)
                
            self.employeeButton.setTitleColor(UIColor.lightGray, for: .normal)
            self.managerButton.setTitleColor(UIColor.lightGray, for: .normal)
            self.vendorButton.setTitleColor(UIColor.lightGray, for: .normal)
                
            
            })
            
        case 1:
           
            UIView.animate(withDuration: 0.0001, animations:{
            
            sender.setTitleColor(UIColor.white, for: .normal)
            
            self.enableButtons()
            self.unhideButtons()
            self.makeButtonsGray()
                
            self.entrantButton1.setTitleColor(UIColor.white, for: .normal)
                
            self.entrantButton1.setTitle("Food Services", for: .normal)
            self.entrantButton2.setTitle("Ride Services", for: .normal)
            self.entrantButton3.setTitle("Maintenance", for: .normal)
            self.entrantButton4.setTitle("Contract", for: .normal)
            
            self.entrantButton5.isEnabled = false
            self.entrantButton5.isHidden = true
                
            self.guestButton.setTitleColor(UIColor.lightGray, for: .normal)
            self.managerButton.setTitleColor(UIColor.lightGray, for: .normal)
            self.vendorButton.setTitleColor(UIColor.lightGray, for: .normal)
            
            })
            
        case 2:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.enableButtons()
                self.unhideButtons()
                self.makeButtonsGray()
                
                self.entrantButton1.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitle("Senior", for: .normal)
                self.entrantButton2.setTitle("General", for: .normal)
                self.entrantButton3.setTitle("Shift", for: .normal)
                
                self.entrantButton4.isEnabled = false
                self.entrantButton4.isHidden = true
                self.entrantButton5.isEnabled = false
                self.entrantButton5.isHidden = true
                
                self.employeeButton.setTitleColor(UIColor.lightGray, for: .normal)
                self.guestButton.setTitleColor(UIColor.lightGray, for: .normal)
                self.vendorButton.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
        case 3:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.enableButtons()
                self.unhideButtons()
                self.makeButtonsGray()
                
                self.entrantButton1.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitle("Acme", for: .normal)
                self.entrantButton2.setTitle("Orkin", for: .normal)
                self.entrantButton3.setTitle("Fedex", for: .normal)
                self.entrantButton4.setTitle("NW Electrical", for: .normal)
                
                self.entrantButton5.isEnabled = false
                self.entrantButton5.isHidden = true
                
                self.employeeButton.setTitleColor(UIColor.lightGray, for: .normal)
                self.managerButton.setTitleColor(UIColor.lightGray, for: .normal)
                self.guestButton.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
        case 4:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.white, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
        case 5:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.white, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
        case 6:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.white, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
        case 7:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.white, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
        case 8:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.white, for: .normal)
                
            })
            
        default:
            break
        }
        
    }
    
    var amusementPark = AmusementPark()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        defaultSettings()
        
        var myBool = false
        var discounts: (food: Int,merchandise: Int) = (0,0)
        
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
        
        amusementPark.createGuest(guestType: .freeChild, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: 0, birthday: nil)
        
        print("\nGuest - Free Child Error\n")
        
        amusementPark.createGuest(guestType: .freeChild, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: 0, birthday: Date().addingTimeInterval(-157784761))
        
        print("\nGuest - Season Pass No First Name\n")
        
        amusementPark.createGuest(guestType: .seasonPassGuest, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nGuest - Season Pass No Last Name\n")
        
        amusementPark.createGuest(guestType: .seasonPassGuest, firstName: "Alan", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nGuest - Season Pass No Street Address\n")
        
        amusementPark.createGuest(guestType: .seasonPassGuest, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nGuest - Season Pass No City\n")
        
        amusementPark.createGuest(guestType: .seasonPassGuest, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nGuest - Season Pass No State\n")
        
        amusementPark.createGuest(guestType: .seasonPassGuest, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "", zipCode: 0, birthday: nil)
        
        print("\nGuest - Season Pass No ZIP code\n")
        
        amusementPark.createGuest(guestType: .seasonPassGuest, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 0, birthday: nil)
        
        print("\nGuest - Senior Guest No First Name\n")
        
        amusementPark.createGuest(guestType: .seniorGuest, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nGuest - Senior Guest No Last Name\n")
        
        amusementPark.createGuest(guestType: .seniorGuest, firstName: "Alan", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nGuest - Senior Guest Birthday Error\n")
        
        amusementPark.createGuest(guestType: .seniorGuest, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil)
        
        print("\nGuest - Senior Guest Birthday Error\n")
        
        amusementPark.createGuest(guestType: .seniorGuest, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date().addingTimeInterval(-2051201881))
        
        print("\nGuest - Free Child OK\n")
        
        amusementPark.createGuest(guestType: .freeChild, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: 0, birthday: Date().addingTimeInterval(-157784759))
        
        print("\nGuest - Classic OK\n")
        
        amusementPark.createGuest(guestType: .classic, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: 0, birthday: nil)
        
        print("\nGuest - VIP OK\n")
        
        amusementPark.createGuest(guestType: .vip, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: 0, birthday: nil)
        
        print("\nGuest - Season Pass OK\n")
        
        amusementPark.createGuest(guestType: .seasonPassGuest, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil)
        
        print("\nGuest - Senior Guest OK\n")
        
        amusementPark.createGuest(guestType: .seniorGuest, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date().addingTimeInterval(-2051201879))
        
        /**************************************************************************************************
         Guest Test Case
         
         Swipe Pass at amusement park for all areas
         
         Only areas allowed to enter - Amusement Area
         **************************************************************************************************/
        
        for guest in amusementPark.guestsArray
        {
            print("\n\(guest.guestType)\n")
            myBool = amusementPark.accessSwipePass(for: guest, at: AreaAccess.amusementArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.amusementArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.amusementArea) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: guest, at: AreaAccess.kitchenArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.kitchenArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.kitchenArea) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: guest, at: AreaAccess.maintenanceArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.maintenanceArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.maintenanceArea) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: guest, at: AreaAccess.officeArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.officeArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.officeArea) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: guest, at: AreaAccess.rideControlArea, at: nil)
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
            myBool = amusementPark.accessSwipePass(for: guest, at: nil, at: RideAccess.allRides)
            if myBool
            {
                print("Access to \(RideAccess.allRides) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(RideAccess.allRides) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: guest, at: nil, at: RideAccess.skipLines)
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
         Guest Test Case
         
         Swipe Pass at register
        
         **************************************************************************************************/
        
        for guest in amusementPark.guestsArray
        {
            print("\nDiscounts for \(guest.guestType)\n")
            
            discounts = amusementPark.discountSwipePass(for: guest)
            
            print("Discount for food: \(discounts.food)\n")
            print("Discount for merchandise: \(discounts.merchandise)\n")
            
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
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - no last name Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - no street address Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - no city Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - no state Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - no zip code Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - no birthday Error\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("Employee Contract- no first name Error\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Contract - no last name Error\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Contract - no street address Error\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Contract - no city Error\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Contract - no state Error\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Contract - no zip code Error\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Contract - wrong project number Error\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("Employee Vendor- no first name Error\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Vendor - no last name Error\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Vendor - no birthday Error\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: nil, company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Vendor - company Error\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date(), company: "Company", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Vendor - no date of visit Error\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date(), company: "Acme", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Vendor - date of visit Error\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date(), company: "Acme", projectNumber: 0, dateOfVisit: Date().addingTimeInterval(-86401))
        
        print("\nEmployee - Food Service Employee OK\n")
        
        amusementPark.createEmployee(employeeType: .foodServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date(), company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - Ride Service Employee OK\n")
        
        amusementPark.createEmployee(employeeType: .rideServices, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date(), company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - Maintenance Employee OK\n")
        
        amusementPark.createEmployee(employeeType: .maintenance, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date(), company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee - Manager Employee OK\n")
        
        amusementPark.createEmployee(employeeType: .manager, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: Date(), company: "", projectNumber: 0, dateOfVisit: nil)
        
        print("\nEmployee Contract - 1001\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil, company: "", projectNumber: 1001, dateOfVisit: nil)
        
        print("\nEmployee Contract - 1002\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil, company: "", projectNumber: 1002, dateOfVisit: nil)
        
        print("\nEmployee Contract - 1003\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil, company: "", projectNumber: 1003, dateOfVisit: nil)
        
        print("\nEmployee Contract - 2001\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil, company: "", projectNumber: 2001, dateOfVisit: nil)
        
        print("\nEmployee Contract - 2002\n")
        
        amusementPark.createEmployee(employeeType: .contract, firstName: "Alan", lastName: "Longcoy", streetAddress: "514 That Way St", city: "Lake Jackson", state: "Texas", zipCode: 77566, birthday: nil, company: "", projectNumber: 2002, dateOfVisit: nil)
        
        print("\nEmployee Vendor - Acme\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date(), company: "Acme", projectNumber: 0, dateOfVisit: Date())
        
        print("\nEmployee Vendor - Orkin\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date(), company: "Orkin", projectNumber: 0, dateOfVisit: Date())
        
        print("\nEmployee Vendor - Fedex\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date(), company: "Fedex", projectNumber: 0, dateOfVisit: Date())
        
        print("\nEmployee Vendor - NW Electrical\n")
        
        amusementPark.createEmployee(employeeType: .vendor, firstName: "Alan", lastName: "Longcoy", streetAddress: "", city: "", state: "", zipCode: 0, birthday: Date(), company: "NW Electrical", projectNumber: 0, dateOfVisit: Date())
        
        
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
            myBool = amusementPark.accessSwipePass(for: employee, at: AreaAccess.amusementArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.amusementArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.amusementArea) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: employee, at: AreaAccess.kitchenArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.kitchenArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.kitchenArea) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: employee, at: AreaAccess.maintenanceArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.maintenanceArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.maintenanceArea) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: employee, at: AreaAccess.officeArea, at: nil)
            if myBool
            {
                print("Access to \(AreaAccess.officeArea) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(AreaAccess.officeArea) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: employee, at: AreaAccess.rideControlArea, at: nil)
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
            myBool = amusementPark.accessSwipePass(for: employee, at: nil, at: RideAccess.allRides)
            if myBool
            {
                print("Access to \(RideAccess.allRides) granted\n")
                myBool = false
            }
            else
            {
                print("Access to \(RideAccess.allRides) denied\n")
            }
            myBool = amusementPark.accessSwipePass(for: employee, at: nil, at: RideAccess.skipLines)
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
         
         Swipe Pass at register
         
         **************************************************************************************************/
        
        for employee in amusementPark.employeeArray
        {
            print("\nDiscounts for \(employee.employeeType)\n")
            
            discounts = amusementPark.discountSwipePass(for: employee)
            
            print("Discount for food: \(discounts.food)\n")
            print("Discount for merchandise: \(discounts.merchandise)\n")
            
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func defaultSettings()
    {
        guestButton.setTitleColor(UIColor.white, for: .normal)
        employeeButton.setTitleColor(UIColor.lightGray, for: .normal)
        managerButton.setTitleColor(UIColor.lightGray, for: .normal)
        vendorButton.setTitleColor(UIColor.lightGray, for: .normal)
        
        entrantButton1.setTitle("Classic", for: .normal)
        entrantButton2.setTitle("VIP", for: .normal)
        entrantButton3.setTitle("Child", for: .normal)
        entrantButton4.setTitle("Season Pass", for: .normal)
        entrantButton5.setTitle("Senior", for: .normal)
        
        entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
        entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
        entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
        entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
    }
    
    func enableButtons()
    {
        entrantButton1.isEnabled = true
        entrantButton2.isEnabled = true
        entrantButton3.isEnabled = true
        entrantButton4.isEnabled = true
        entrantButton5.isEnabled = true
    }
    
    func unhideButtons()
    {
        entrantButton1.isHidden = false
        entrantButton2.isHidden = false
        entrantButton3.isHidden = false
        entrantButton4.isHidden = false
        entrantButton5.isHidden = false
    }
    
    
    func hideButtons()
    {
        entrantButton1.isHidden = true
        entrantButton2.isHidden = true
        entrantButton3.isHidden = true
        entrantButton4.isHidden = true
        entrantButton5.isHidden = true
    }
    
    func makeButtonsGray()
    {
        self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
        self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
        self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
        self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
        self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
    }

}

