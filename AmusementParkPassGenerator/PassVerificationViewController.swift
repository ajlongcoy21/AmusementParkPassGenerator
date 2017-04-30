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

    @IBOutlet weak var CreateNewPass: UIButton!
    @IBOutlet weak var PassType: UILabel!
    @IBOutlet weak var entrantName: UITextField!
    @IBOutlet weak var entrantDiscount1: UITextField!
    @IBOutlet weak var entrantDiscount2: UITextField!
    @IBOutlet weak var entrantDiscount3: UITextField!
    @IBOutlet weak var testResults: UILabel!
    
    var passState: Int?
    var amusementPark: AmusementPark?
    var guest: Guest?
    var employee: Employee?
    
    @IBAction func createNewPass(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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
    
    @IBAction func swipeTest(_ sender: UIButton)
    {
        
        switch sender.tag
        {
            case 1:
                if passState! >= 0 && passState! <= 4
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.amusementArea, at: nil))!)
                    
                    testResults.text = testResults.text! + "\n\n\(guest!.pass.discountFood) % food discount"
                    testResults.text = testResults.text! + "\n\(guest!.pass.discountMerchandise) % merchandise discount"
                }
                if passState! >= 4 && passState! <= 13
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.amusementArea, at: nil))!)
                    
                    testResults.text = testResults.text! + "\n\n\(employee!.pass.discountFood) % food discount"
                    testResults.text = testResults.text! + "\n\(employee!.pass.discountMerchandise) % merchandise discount"
                }
            
            
            case 2:
                if passState! >= 0 && passState! <= 4
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: nil, at: RideAccess.allRides))!)
                }
                if passState! >= 4 && passState! <= 13
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: nil, at: RideAccess.allRides))!)
                }
            case 3:
                if passState! >= 0 && passState! <= 4
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: nil, at: RideAccess.skipLines))!)
                }
                if passState! >= 4 && passState! <= 13
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: nil, at: RideAccess.skipLines))!)
                }
            case 4:
                if passState! >= 0 && passState! <= 4
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.kitchenArea, at: nil))!)
                }
                if passState! >= 4 && passState! <= 13
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.kitchenArea, at: nil))!)
                }
            case 5:
                if passState! >= 0 && passState! <= 4
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.officeArea, at: nil))!)
                }
                if passState! >= 4 && passState! <= 13
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.officeArea, at: nil))!)
                }
            case 6:
                if passState! >= 0 && passState! <= 4
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.maintenanceArea, at: nil))!)
                }
                if passState! >= 4 && passState! <= 13
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.maintenanceArea, at: nil))!)
                }
            case 7:
                if passState! >= 0 && passState! <= 4
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: guest, at: AreaAccess.rideControlArea, at: nil))!)
                }
                if passState! >= 4 && passState! <= 13
                {
                    updateResultLabel(access: (amusementPark?.accessSwipePass(for: employee, at: AreaAccess.rideControlArea, at: nil))!)
                }
            
            default:
                break
            
        }
        
    }
    
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
    
    func updateResultLabel(access: Bool)
    {
        if access
        {
            testResults.text = "GRANTED"
            testResults.backgroundColor = UIColor.green
        }
        else
        {
            testResults.text = "DENIED"
            testResults.backgroundColor = UIColor.red
            displayAlert(alertTitle: "ACCESS DENIED", alertMessage: "Entrant was denied access.")
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayAlert(alertTitle: String, alertMessage: String)
    {
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        alertWindow.rootViewController = UIViewController()
        alertWindow.windowLevel = UIWindowLevelAlert + 1;
        alertWindow.makeKeyAndVisible()
        alertWindow.rootViewController?.present(alertController, animated: true, completion: nil)
        
    }
}


