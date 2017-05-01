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

    let date = Date()
    let calendar = Calendar.current
    
    var year: Int = 0
    var month: Int = 0
    var day: Int = 0
    
    var amusementPark = AmusementPark()
    var passState: Int = 0
    var myError = false
    var myBirthday = DateFormatter()
    var myDateOfVisit = DateFormatter()
    
    
    @IBOutlet weak var guestButton: UIButton!
    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var vendorButton: UIButton!
    
    @IBOutlet weak var entrantButton1: UIButton!
    @IBOutlet weak var entrantButton2: UIButton!
    @IBOutlet weak var entrantButton3: UIButton!
    @IBOutlet weak var entrantButton4: UIButton!
    @IBOutlet weak var entrantButton5: UIButton!
    
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var dateOfVisitText: UITextField!
    @IBOutlet weak var projectNumberText: UITextField!
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var companyText: UITextField!
    @IBOutlet weak var streetAddressText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateText: UITextField!
    @IBOutlet weak var zipCodeText: UITextField!
    
    @IBOutlet weak var generatePassButton: UIButton!
    
    @IBAction func entrantTypeSelected(_ sender: UIButton)
    {
        
        switch sender.tag
        {
        case 0:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
            sender.setTitleColor(UIColor.white, for: .normal)
            
            self.enableButtons()
            self.unhideButtons()
            self.makeButtonsGray()
                
            self.disableTextFields()
            self.makeTextFieldClear()
            self.clearText()
                
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
            
            passState = 0
            
            print("Pass State: \(passState)\n\n")
            
        case 1:
           
            UIView.animate(withDuration: 0.0001, animations:{
            
            sender.setTitleColor(UIColor.white, for: .normal)
            
            self.enableButtons()
            self.unhideButtons()
            self.makeButtonsGray()
                
            self.disableTextFields()
            self.makeTextFieldClear()
            self.clearText()
                
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
            
            
            firstNameText.isEnabled = true
            lastNameText.isEnabled = true
            streetAddressText.isEnabled = true
            cityText.isEnabled = true
            stateText.isEnabled = true
            zipCodeText.isEnabled = true
            
            firstNameText.backgroundColor = UIColor.white
            lastNameText.backgroundColor = UIColor.white
            streetAddressText.backgroundColor = UIColor.white
            cityText.backgroundColor = UIColor.white
            stateText.backgroundColor = UIColor.white
            zipCodeText.backgroundColor = UIColor.white
            
            passState = 5
            
            print("Pass State: \(passState)\n\n")
            
        case 2:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.enableButtons()
                self.unhideButtons()
                self.makeButtonsGray()
                
                self.disableTextFields()
                self.makeTextFieldClear()
                self.clearText()
                
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
            
            firstNameText.isEnabled = true
            lastNameText.isEnabled = true
            streetAddressText.isEnabled = true
            cityText.isEnabled = true
            stateText.isEnabled = true
            zipCodeText.isEnabled = true
            
            firstNameText.backgroundColor = UIColor.white
            lastNameText.backgroundColor = UIColor.white
            streetAddressText.backgroundColor = UIColor.white
            cityText.backgroundColor = UIColor.white
            stateText.backgroundColor = UIColor.white
            zipCodeText.backgroundColor = UIColor.white
            
            passState = 9
            
            print("Pass State: \(passState)\n\n")
            
        case 3:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.enableButtons()
                self.unhideButtons()
                self.makeButtonsGray()
                
                self.disableTextFields()
                self.makeTextFieldClear()
                self.clearText()
                
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
            
            firstNameText.isEnabled = true
            lastNameText.isEnabled = true
            birthdayText.isEnabled = true
            dateOfVisitText.isEnabled = true
            companyText.isEnabled = true

            
            firstNameText.backgroundColor = UIColor.white
            lastNameText.backgroundColor = UIColor.white
            birthdayText.backgroundColor = UIColor.white
            dateOfVisitText.backgroundColor = UIColor.white
            companyText.backgroundColor = UIColor.white
            
            passState = 10
            
            print("Pass State: \(passState)\n\n")

            
        case 4:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.white, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
            switch entrantButton1.title(for: .normal)!
            {
            case "Classic":
                makeTextFieldClear()
                clearText()
                birthdayText.isEnabled = false
                dateOfVisitText.isEnabled = false
                projectNumberText.isEnabled = false
                firstNameText.isEnabled = false
                lastNameText.isEnabled = false
                companyText.isEnabled = false
                streetAddressText.isEnabled = false
                cityText.isEnabled = false
                stateText.isEnabled = false
                zipCodeText.isEnabled = false
                
                passState = 0
                
                print("Pass State: \(passState)\n\n")
                
            case "Food Services":
                
                self.disableTextFields()
                self.makeTextFieldClear()
                self.clearText()
                
                firstNameText.isEnabled = true
                lastNameText.isEnabled = true
                streetAddressText.isEnabled = true
                cityText.isEnabled = true
                stateText.isEnabled = true
                zipCodeText.isEnabled = true
                
                firstNameText.backgroundColor = UIColor.white
                lastNameText.backgroundColor = UIColor.white
                streetAddressText.backgroundColor = UIColor.white
                cityText.backgroundColor = UIColor.white
                stateText.backgroundColor = UIColor.white
                zipCodeText.backgroundColor = UIColor.white
                
                passState = 5
                
                print("Pass State: \(passState)\n\n")
                
            case "Acme":
                
                passState = 10
                
                print("Pass State: \(passState)\n\n")
                
            default:
                break
            }
            
        case 5:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.white, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
            switch entrantButton2.title(for: .normal)!
            {
            case "VIP":
                makeTextFieldClear()
                clearText()
                birthdayText.isEnabled = false
                dateOfVisitText.isEnabled = false
                projectNumberText.isEnabled = false
                firstNameText.isEnabled = false
                lastNameText.isEnabled = false
                companyText.isEnabled = false
                streetAddressText.isEnabled = false
                cityText.isEnabled = false
                stateText.isEnabled = false
                zipCodeText.isEnabled = false
                
                passState = 1
                
                print("Pass State: \(passState)\n\n")
                
            case "Ride Services":
                
                self.disableTextFields()
                self.makeTextFieldClear()
                self.clearText()
                
                firstNameText.isEnabled = true
                lastNameText.isEnabled = true
                streetAddressText.isEnabled = true
                cityText.isEnabled = true
                stateText.isEnabled = true
                zipCodeText.isEnabled = true
                
                firstNameText.backgroundColor = UIColor.white
                lastNameText.backgroundColor = UIColor.white
                streetAddressText.backgroundColor = UIColor.white
                cityText.backgroundColor = UIColor.white
                stateText.backgroundColor = UIColor.white
                zipCodeText.backgroundColor = UIColor.white
                
                passState = 6
                
                print("Pass State: \(passState)\n\n")
                
            case "Orkin":
                
                passState = 11
                
                print("Pass State: \(passState)\n\n")
                
            default:
                break
            }
            
        case 6:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.white, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
            switch entrantButton3.title(for: .normal)!
            {
            case "Child":
                makeTextFieldClear()
                clearText()
                birthdayText.isEnabled = true
                birthdayText.backgroundColor = UIColor.white
                dateOfVisitText.isEnabled = false
                projectNumberText.isEnabled = false
                firstNameText.isEnabled = false
                lastNameText.isEnabled = false
                companyText.isEnabled = false
                streetAddressText.isEnabled = false
                cityText.isEnabled = false
                stateText.isEnabled = false
                zipCodeText.isEnabled = false
                
                passState = 2
                
                print("Pass State: \(passState)\n\n")
                
            case "Maintenance":
                
                self.disableTextFields()
                self.makeTextFieldClear()
                self.clearText()
                
                firstNameText.isEnabled = true
                lastNameText.isEnabled = true
                streetAddressText.isEnabled = true
                cityText.isEnabled = true
                stateText.isEnabled = true
                zipCodeText.isEnabled = true
                
                firstNameText.backgroundColor = UIColor.white
                lastNameText.backgroundColor = UIColor.white
                streetAddressText.backgroundColor = UIColor.white
                cityText.backgroundColor = UIColor.white
                stateText.backgroundColor = UIColor.white
                zipCodeText.backgroundColor = UIColor.white
                
                passState = 7
                
                print("Pass State: \(passState)\n\n")
                
            case "Fedex":
                
                passState = 12
                
                print("Pass State: \(passState)\n\n")
                
            default:
                break
            }
            
        case 7:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.white, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
                
            })
            
            switch entrantButton4.title(for: .normal)!
            {
            case "Season Pass":
                makeTextFieldClear()
                clearText()
                birthdayText.isEnabled = false
                dateOfVisitText.isEnabled = false
                projectNumberText.isEnabled = false
                firstNameText.isEnabled = true
                lastNameText.isEnabled = true
                companyText.isEnabled = false
                streetAddressText.isEnabled = true
                cityText.isEnabled = true
                stateText.isEnabled = true
                zipCodeText.isEnabled = true
                
                firstNameText.backgroundColor = UIColor.white
                lastNameText.backgroundColor = UIColor.white
                streetAddressText.backgroundColor = UIColor.white
                cityText.backgroundColor = UIColor.white
                stateText.backgroundColor = UIColor.white
                zipCodeText.backgroundColor = UIColor.white
                
                passState = 3
                
                print("Pass State: \(passState)\n\n")
                
            case "Contract":
                makeTextFieldClear()
                clearText()
                birthdayText.isEnabled = false
                dateOfVisitText.isEnabled = false
                projectNumberText.isEnabled = true
                firstNameText.isEnabled = true
                lastNameText.isEnabled = true
                companyText.isEnabled = false
                streetAddressText.isEnabled = true
                cityText.isEnabled = true
                stateText.isEnabled = true
                zipCodeText.isEnabled = true
                
                firstNameText.backgroundColor = UIColor.white
                lastNameText.backgroundColor = UIColor.white
                streetAddressText.backgroundColor = UIColor.white
                cityText.backgroundColor = UIColor.white
                stateText.backgroundColor = UIColor.white
                zipCodeText.backgroundColor = UIColor.white
                projectNumberText.backgroundColor = UIColor.white
                
                passState = 8
                
                print("Pass State: \(passState)\n\n")
                
            case "NW Electrical":
                
                passState = 13
                
                print("Pass State: \(passState)\n\n")
                
            default:
                break
            }
            
        case 8:
            
            UIView.animate(withDuration: 0.0001, animations:{
                
                sender.setTitleColor(UIColor.white, for: .normal)
                
                self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
                self.entrantButton5.setTitleColor(UIColor.white, for: .normal)
                
            })
            
            switch entrantButton5.title(for: .normal)!
            {
            case "Senior":
                makeTextFieldClear()
                clearText()
                birthdayText.isEnabled = true
                dateOfVisitText.isEnabled = false
                projectNumberText.isEnabled = false
                firstNameText.isEnabled = true
                lastNameText.isEnabled = true
                companyText.isEnabled = false
                streetAddressText.isEnabled = false
                cityText.isEnabled = false
                stateText.isEnabled = false
                zipCodeText.isEnabled = false
                
                birthdayText.backgroundColor = UIColor.white
                firstNameText.backgroundColor = UIColor.white
                lastNameText.backgroundColor = UIColor.white
                
                passState = 4
                
                print("Pass State: \(passState)\n\n")
                
            default:
                break
            }
            
        case 9:
            
            switch passState
            {
            case 0:
                
                print("Classic Guest\n")
                
                amusementPark.createGuest(guestType: .classic, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!))
                
            case 1:
                
                print("VIP\n")
                
                amusementPark.createGuest(guestType: .vip, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!))
                
            case 2:
                
                print("Child\n")
                
                amusementPark.createGuest(guestType: .freeChild, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!))
                
            case 3:
                
                print("Season Pass\n")
                
                amusementPark.createGuest(guestType: .seasonPassGuest, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!))
                
            case 4:
                
                print("Senior\n")
                
                amusementPark.createGuest(guestType: .seniorGuest, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!))
                
            case 5:
                
                print("Food Services\n")
                
                amusementPark.createEmployee(employeeType: .foodServices, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!), company: companyText.text, projectNumber: Int(projectNumberText.text!), dateOfVisit: myDateOfVisit.date(from: dateOfVisitText.text!))
                
            case 6:
                
                print("Ride Services\n")
                
                amusementPark.createEmployee(employeeType: .rideServices, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!), company: companyText.text, projectNumber: Int(projectNumberText.text!), dateOfVisit: myDateOfVisit.date(from: dateOfVisitText.text!))
                
            case 7:
                
                print("Maintenance\n")
                
                amusementPark.createEmployee(employeeType: .maintenance, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!), company: companyText.text, projectNumber: Int(projectNumberText.text!), dateOfVisit: myDateOfVisit.date(from: dateOfVisitText.text!))
                
            case 8:
                
                print("Contract\n")
                
                amusementPark.createEmployee(employeeType: .contract, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!), company: companyText.text, projectNumber: Int(projectNumberText.text!), dateOfVisit: myDateOfVisit.date(from: dateOfVisitText.text!))
                
            case 9:
                
                print("Manager\n")
                
                amusementPark.createEmployee(employeeType: .manager, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!), company: companyText.text, projectNumber: Int(projectNumberText.text!), dateOfVisit: myDateOfVisit.date(from: dateOfVisitText.text!))
                
            case 10, 11, 12, 13:
                
                print("Vendor\n")
                
                amusementPark.createEmployee(employeeType: .vendor, firstName: firstNameText.text, lastName: lastNameText.text, streetAddress: streetAddressText.text, city: cityText.text, state: stateText.text, zipCode: Int(zipCodeText.text!), birthday: myBirthday.date(from: birthdayText.text!), company: companyText.text, projectNumber: Int(projectNumberText.text!), dateOfVisit: myDateOfVisit.date(from: dateOfVisitText.text!))
                
            default:
                break
                
            }
        
        case 10:
            
            switch passState
            {
                
            case 2:
                
                print("Child\n")
                
                birthdayText.text = "\(month)/\(day)/\(year-4)"
                
            case 4:
                
                print("Senior\n")
                
                birthdayText.text = "\(month)/\(day)/\(year-66)"
                firstNameText.text = "John"
                lastNameText.text = "Smith"
                
            case 3, 5, 6, 7, 9:
                
                print("Food Services\n")
                
                firstNameText.text = "John"
                lastNameText.text = "Smith"
                streetAddressText.text = "1234 Street Address"
                cityText.text = "Concord"
                stateText.text = "NH"
                zipCodeText.text = "12345"
                
            case 8:
                
                print("Contract\n")
                
                firstNameText.text = "John"
                lastNameText.text = "Smith"
                streetAddressText.text = "1234 Street Address"
                cityText.text = "Concord"
                stateText.text = "NH"
                zipCodeText.text = "12345"
                projectNumberText.text = "1001"
                
            case 10:
                
                print("Vendor\n")
                
                birthdayText.text = "\(month)/\(day)/\(year-20)"
                dateOfVisitText.text = "\(month)/\(day)/\(year)"
                firstNameText.text = "John"
                lastNameText.text = "Smith"
                companyText.text = "Acme"
                
            case 11:
                
                print("Vendor\n")
                
                birthdayText.text = "\(month)/\(day)/\(year-20)"
                dateOfVisitText.text = "\(month)/\(day)/\(year)"
                firstNameText.text = "John"
                lastNameText.text = "Smith"
                companyText.text = "Orkin"
                
            case 12:
                
                print("Vendor\n")
                
                birthdayText.text = "\(month)/\(day)/\(year-20)"
                dateOfVisitText.text = "\(month)/\(day)/\(year)"
                firstNameText.text = "John"
                lastNameText.text = "Smith"
                companyText.text = "Fedex"
                
            case 13:
                
                print("Vendor\n")
                
                birthdayText.text = "\(month)/\(day)/\(year-20)"
                dateOfVisitText.text = "\(month)/\(day)/\(year)"
                firstNameText.text = "John"
                lastNameText.text = "Smith"
                companyText.text = "NW Electrical"
            
            default:
                break
            }
            
        default:
            break
        }
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
    {
        // If there is an error when trying to create a new pass, do not show the new view
        
        if !amusementPark.passError
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // prepare the new view controller to receive data
        
        let destinationVC = segue.destination as! PassVerificationViewController
        
        // set the data for the new view controller
        
        destinationVC.passState = passState
        destinationVC.amusementPark = amusementPark
        destinationVC.guest = amusementPark.getLastGuest()
        destinationVC.employee = amusementPark.getLastEmployee()
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        defaultSettings()
        
        // Setup the formats for the birthday and date of visits fields
        
        myBirthday.dateFormat = "MM/DD/YYYY"
        myDateOfVisit.dateFormat = "MM/DD/YYYY"
        
        // Get the current year, month, and day for the populate data fields
        
        year = calendar.component(.year, from: date)
        month = calendar.component(.month, from: date)
        day = calendar.component(.day, from: date)
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**************************************************************************
     defaultSettings
     
     This function setups the default settings for the UI buttons
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
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
    
    /**************************************************************************
     enableButtons
     
     This function makes the buttons enabled being used in the UI
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
    func enableButtons()
    {
        entrantButton1.isEnabled = true
        entrantButton2.isEnabled = true
        entrantButton3.isEnabled = true
        entrantButton4.isEnabled = true
        entrantButton5.isEnabled = true
    }
    
    /**************************************************************************
     unhideButtons
     
     This function makes the buttons unhidden being used in the UI
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
    func unhideButtons()
    {
        entrantButton1.isHidden = false
        entrantButton2.isHidden = false
        entrantButton3.isHidden = false
        entrantButton4.isHidden = false
        entrantButton5.isHidden = false
    }
    
    /**************************************************************************
     hideButtons
     
     This function makes the buttons hidden not being used in the UI
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
    func hideButtons()
    {
        entrantButton1.isHidden = true
        entrantButton2.isHidden = true
        entrantButton3.isHidden = true
        entrantButton4.isHidden = true
        entrantButton5.isHidden = true
    }
    
    /**************************************************************************
     makeButtonsGray
     
     This function makes the buttons gray not being used in the UI
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
    func makeButtonsGray()
    {
        self.entrantButton1.setTitleColor(UIColor.lightGray, for: .normal)
        self.entrantButton2.setTitleColor(UIColor.lightGray, for: .normal)
        self.entrantButton3.setTitleColor(UIColor.lightGray, for: .normal)
        self.entrantButton4.setTitleColor(UIColor.lightGray, for: .normal)
        self.entrantButton5.setTitleColor(UIColor.lightGray, for: .normal)
    }
    
    /**************************************************************************
     makeTextFieldClear
     
     This function makes the text fields of the UI clear of text
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
    func makeTextFieldClear()
    {
        birthdayText.backgroundColor = UIColor.clear
        dateOfVisitText.backgroundColor = UIColor.clear
        projectNumberText.backgroundColor = UIColor.clear
        firstNameText.backgroundColor = UIColor.clear
        lastNameText.backgroundColor = UIColor.clear
        companyText.backgroundColor = UIColor.clear
        streetAddressText.backgroundColor = UIColor.clear
        cityText.backgroundColor = UIColor.clear
        stateText.backgroundColor = UIColor.clear
        zipCodeText.backgroundColor = UIColor.clear
    }
    
    /**************************************************************************
     disableTextFields
     
     This function disables the text fields of the UI
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
    func disableTextFields()
    {
        birthdayText.isEnabled = false
        dateOfVisitText.isEnabled = false
        projectNumberText.isEnabled = false
        firstNameText.isEnabled = false
        lastNameText.isEnabled = false
        companyText.isEnabled = false
        streetAddressText.isEnabled = false
        cityText.isEnabled = false
        stateText.isEnabled = false
        zipCodeText.isEnabled = false
    }
    
    /**************************************************************************
     clearText
     
     This function clears the text in the text fields of the UI
     
     parameters:
     None
     
     Returns:
     None
     
     **************************************************************************/
    
    func clearText()
    {
        birthdayText.text = nil
        dateOfVisitText.text = nil
        projectNumberText.text = nil
        firstNameText.text = nil
        lastNameText.text = nil
        companyText.text = nil
        streetAddressText.text = nil
        cityText.text = nil
        stateText.text = nil
        zipCodeText.text = nil
    }

}

