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
    
    var passState: Int?
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
            entrantDiscount1.text = "\(employee!.pass.rideAccessArray[0])"
            entrantDiscount2.text = "\(employee!.pass.discountFood) % Food Discount"
            entrantDiscount3.text = "\(employee!.pass.discountMerchandise) % Merchandise Discount"
        default:
            break
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


