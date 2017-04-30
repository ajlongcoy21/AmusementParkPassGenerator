//
//  PassVerificationViewController.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 4/23/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import UIKit

class PassVerificationViewController: UIViewController
{
    // Define the connection between the buttons, labels, and text fields in the UI

    @IBOutlet weak var CreateNewPass: UIButton!         // Button to take us back to main view controller
    @IBOutlet weak var PassType: UILabel!               // Label to identify the pass type that was created
    @IBOutlet weak var entrantName: UITextField!        // TextField to display the name of the entrant
    @IBOutlet weak var entrantDiscount1: UITextField!   // TextField to display the discount of the entrant
    @IBOutlet weak var entrantDiscount2: UITextField!   // TextField to display the discount of the entrant
    @IBOutlet weak var entrantDiscount3: UITextField!   // TextField to display the discount of the entrant
    @IBOutlet weak var testResults: UILabel!            // Label to display the result of the test cases
    
    var passState: Int?                 // Integer to understand which pass type was selected to be generated
    var amusementPark: AmusementPark?   // Amusement park to have access to the functions for checking access
    var guest: Guest?                   // To store the most recent created guest
    var employee: Employee?             // To store the most recent created employee
    
    /**************************************************************************
     createNewPass
     
     This function will dismiss the current view to allow the user to create a
     new pass
     
     parameters:
     sender
     
     Returns:
     N/A
     
     **************************************************************************/
    
    @IBAction func createNewPass(_ sender: Any)
    {
        // Dismiss the current view 
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Check to see what type of pass the user was wanting to create and update the display fields 
        // accordingly
        
        switch passState!
        {
            case 0:
                PassType.text = "Classic Guest Pass"
                updateDiscountLabels(for: guest)
            case 1:
                PassType.text = "VIP Guest Pass"
                updateDiscountLabels(for: guest)
            case 2:
                PassType.text = "Child Guest Pass"
                updateDiscountLabels(for: guest)
            case 3:
                PassType.text = "Season Guest Pass"
                updateDiscountLabels(for: guest)
            case 4:
                PassType.text = "Senior Guest Pass"
                updateDiscountLabels(for: guest)
            case 5:
                PassType.text = "Food Service Pass"
                updateDiscountLabels(for: employee)
            case 6:
                PassType.text = "Ride Pass"
                updateDiscountLabels(for: employee)
            case 7:
                PassType.text = "Maintenance Pass"
                updateDiscountLabels(for: employee)
            case 8:
                PassType.text = "Contract Pass"
                updateDiscountLabels(for: employee)
            case 9:
                PassType.text = "Manager Pass"
                updateDiscountLabels(for: employee)
            case 10:
                PassType.text = "Vendor Pass - ACME"
                updateDiscountLabels(for: employee)
            case 11:
                PassType.text = "Vendor Pass - ORKIN"
                updateDiscountLabels(for: employee)
            case 12:
                PassType.text = "Vendor Pass - FEDEX"
                updateDiscountLabels(for: employee)
            case 13:
                PassType.text = "Vendor Pass - NW ELECTRICAL"
                updateDiscountLabels(for: employee)
            default:
                break
        }
        
    }
    
    /**************************************************************************
     swipeTest
     
     This function will perform the swipe test to verify the buisness logic is
     correct for the current entrant pass created
     
     parameters:
     sender
     
     Returns:
     N/A
     
     **************************************************************************/
    
    @IBAction func swipeTest(_ sender: UIButton)
    {
        
        // Identify which button was pressed
        
        /*
         
         1 - Amusement Area Swipe
         2 - Access to All Rides Swipe
         3 - Skip All Ride Lines Swipe
         4 - Kitchen Area Swipe
         5 - Office Area Swipe
         6 - Maintenance Area Swipe
         7 - Ride Control Area Swipe
 
        */
        
        switch sender.tag
        {
            case 1:
                
                // If the pass state is of a guest type then perform the code with a guest type entrant
                
                if passState! >= 0 && passState! <= 4
                {
                    
                    // Update the result label with the result of the swipe to the amusement area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.amusementArea, at: nil))!)
                    
                    // Display the discount for food and merchandise
                    
                    testResults.text = testResults.text! + "\n\n\(guest!.pass.discountFood) % food discount"
                    testResults.text = testResults.text! + "\n\(guest!.pass.discountMerchandise) % merchandise discount"
                }
                
                // If the pass state is of a employee type then perform the code with a employee type entrant
                
                if passState! >= 4 && passState! <= 13
                {
                    
                    // Update the result label with the result of the swipe to the amusement area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.amusementArea, at: nil))!)
                    
                    // Display the discount for food and merchandise
                    
                    testResults.text = testResults.text! + "\n\n\(employee!.pass.discountFood) % food discount"
                    testResults.text = testResults.text! + "\n\(employee!.pass.discountMerchandise) % merchandise discount"
                }
            
            
            case 2:
                
                // If the pass state is of a guest type then perform the code with a guest type entrant
                
                if passState! >= 0 && passState! <= 4
                {
                    // Update the result label with the result of the swipe to the all rides
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: nil, at: RideAccess.allRides))!)
                }
                
                // If the pass state is of a employee type then perform the code with a employee type entrant
                
                if passState! >= 4 && passState! <= 13
                {
                    
                    // Update the result label with the result of the swipe to the all rides
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: nil, at: RideAccess.allRides))!)
                }
            case 3:
                
                // If the pass state is of a guest type then perform the code with a guest type entrant
                
                if passState! >= 0 && passState! <= 4
                {
                    // Update the result label with the result of the swipe to the skip all ride lines
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: nil, at: RideAccess.skipLines))!)
                }
                
                // If the pass state is of a employee type then perform the code with a employee type entrant
                
                if passState! >= 4 && passState! <= 13
                {
                    // Update the result label with the result of the swipe to the skip all ride lines
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: nil, at: RideAccess.skipLines))!)
                }
            case 4:
                
                // If the pass state is of a guest type then perform the code with a guest type entrant
                
                if passState! >= 0 && passState! <= 4
                {
                    
                    // Update the result label with the result of the swipe to the kitchen area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.kitchenArea, at: nil))!)
                }
                
                // If the pass state is of a employee type then perform the code with a employee type entrant
                
                if passState! >= 4 && passState! <= 13
                {
                    
                    // Update the result label with the result of the swipe to the kitchen area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.kitchenArea, at: nil))!)
                }
            case 5:
                
                // If the pass state is of a guest type then perform the code with a guest type entrant
                
                if passState! >= 0 && passState! <= 4
                {
                    // Update the result label with the result of the swipe to the office area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.officeArea, at: nil))!)
                }
                
                // If the pass state is of a employee type then perform the code with a employee type entrant
                
                if passState! >= 4 && passState! <= 13
                {
                    
                    // Update the result label with the result of the swipe to the office area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.officeArea, at: nil))!)
                }
            case 6:
                
                // If the pass state is of a guest type then perform the code with a guest type entrant
                
                if passState! >= 0 && passState! <= 4
                {
                    
                    // Update the result label with the result of the swipe to the maintenance area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.maintenanceArea, at: nil))!)
                }
                
                // If the pass state is of a employee type then perform the code with a employee type entrant
                
                if passState! >= 4 && passState! <= 13
                {
                    
                    // Update the result label with the result of the swipe to the maintenance area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.maintenanceArea, at: nil))!)
                }
            case 7:
                
                // If the pass state is of a guest type then perform the code with a guest type entrant
                
                if passState! >= 0 && passState! <= 4
                {
                    
                    // Update the result label with the result of the swipe to the ride control area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.rideControlArea, at: nil))!)
                }
                
                // If the pass state is of a employee type then perform the code with a employee type entrant
                
                if passState! >= 4 && passState! <= 13
                {
                    
                    // Update the result label with the result of the swipe to the ride control area
                    
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.rideControlArea, at: nil))!)
                }
            
            default:
                break
            
        }
        
    }
    
    /**************************************************************************
     updateDiscountLabels
     
     This function will update the discount labels based on the entrant information
     passed in.
     
     parameters:
     entrant
     
     Returns:
     N/A
     
     **************************************************************************/
    
    func updateDiscountLabels(for entrant: Optional<Any>)
    {
        switch entrant // Look to see what type of entrant the pass is for
        {
        case is Guest:
            entrantName.text = guest!.firstName! + " " + guest!.lastName!
            entrantDiscount1.text = "\(guest!.pass.rideAccessArray[0])"
            entrantDiscount2.text = "\(guest!.pass.discountFood) % Food Discount"
            entrantDiscount3.text = "\(guest!.pass.discountMerchandise) % Merchandise Discount"
        case is Employee:
            entrantName.text = employee!.firstName! + " " + employee!.lastName!
            
            if employee!.pass.rideAccessArray.count > 0
            {
                entrantDiscount1.text = "\(employee!.pass.rideAccessArray[0])"
            }
            else
            {
                entrantDiscount1.text = ""
            }
            
            entrantDiscount2.text = "\(employee!.pass.discountFood) % Food Discount"
            entrantDiscount3.text = "\(employee!.pass.discountMerchandise) % Merchandise Discount"
        default:
            break
        }
    }
    
    /**************************************************************************
     updateResultLabel
     
     This function will update the result field based on the access the entrant
     has to the different areas.
     
     parameters:
     access
     
     Returns:
     N/A
     
     **************************************************************************/
    
    func updateResultLabel(access: Bool)
    {
        // If access is granted, update the text and make the color green
        
        if access
        {
            testResults.text = "GRANTED"
            testResults.backgroundColor = UIColor.green
        }
        
        // If access is denied, update the text and make the color red
            
        else
        {
            testResults.text = "DENIED"
            testResults.backgroundColor = UIColor.red
            
            // Display an alert message letting the user know that access was denied
            
            displayAlert(alertTitle: "ACCESS DENIED", alertMessage: "Entrant was denied access.")
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
}


