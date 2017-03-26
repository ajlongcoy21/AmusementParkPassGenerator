//
//  Pass.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 3/4/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

/**************************************************************************
 Enumeration Ride Access
 
 Defines the different type of ride access that can be at the amusement park
 
 **************************************************************************/

enum RideAccess
{
    case allRides
    case skipLines
}

/**************************************************************************
 Enumeration Area Access
 
 Defines the different areas to access that can be at the amusement park
 
 **************************************************************************/

enum AreaAccess
{
    case amusementArea
    case kitchenArea
    case rideControlArea
    case maintenanceArea
    case officeArea
}

/**************************************************************************
 Struct Pass
 
 struture to define the pass that an employee or guest could have.
 
 **************************************************************************/

struct Pass
{
    // Define variables used for the pass
    
    var rideAccessArray: [RideAccess] = [] // Array to store the different types of ride access for the user
    var areaAccessArray: [AreaAccess] = [] // Array to store the different types of area access for the user
    var discountFood: Int = 0              // Discout for food according to their amusement park entrant type
    var discountMerchandise: Int = 0       // Discout for merchandise according to their amusement park entrant type
    
    /**************************************************************************
     updatePass
     
     This function will update the pass for the user depending on their entrant
     type for the amusement park.
     
     parameters:
        entrantType - Optional so we can pass in both guest and employee for the same
                      function
     
     Returns:
        None
     
     **************************************************************************/
    
    mutating func updatePass(entrantType: Optional<Any>, projectNumber: Int?, companyName: String?)
    {
        // reset area and ride arrays
        
        rideAccessArray = []
        areaAccessArray = []
        
        // if entrant is a guest type add specific types of access for the user
        
        if entrantType is GuestType
        {
            
            switch entrantType as! GuestType
            {
            case .classic:
                areaAccessArray.append(AreaAccess.amusementArea)
                rideAccessArray.append(RideAccess.allRides)
                break
            case .freeChild:
                areaAccessArray.append(AreaAccess.amusementArea)
                rideAccessArray.append(RideAccess.allRides)
                break
            case .vip, .seasonPassGuest:
                areaAccessArray.append(AreaAccess.amusementArea)
                rideAccessArray.append(RideAccess.allRides)
                rideAccessArray.append(RideAccess.skipLines)
                discountFood = 10
                discountMerchandise = 20
            case .seniorGuest:
                areaAccessArray.append(AreaAccess.amusementArea)
                rideAccessArray.append(RideAccess.allRides)
                rideAccessArray.append(RideAccess.skipLines)
                discountFood = 10
                discountMerchandise = 10
            }
        }
        
        // if entrant is an employee type add specific types of access for the user
        
        if entrantType is EmployeeType
        {
            switch entrantType as! EmployeeType
            {
            case .foodServices:
                areaAccessArray.append(AreaAccess.amusementArea)
                areaAccessArray.append(AreaAccess.kitchenArea)
                rideAccessArray.append(RideAccess.allRides)
                discountFood = 15
                discountMerchandise = 25
            case .rideServices:
                areaAccessArray.append(AreaAccess.amusementArea)
                areaAccessArray.append(AreaAccess.rideControlArea)
                rideAccessArray.append(RideAccess.allRides)
                discountFood = 15
                discountMerchandise = 25
            case .maintenance:
                areaAccessArray.append(AreaAccess.amusementArea)
                areaAccessArray.append(AreaAccess.kitchenArea)
                areaAccessArray.append(AreaAccess.rideControlArea)
                areaAccessArray.append(AreaAccess.maintenanceArea)
                rideAccessArray.append(RideAccess.allRides)
                discountFood = 15
                discountMerchandise = 25
            case .manager:
                areaAccessArray.append(AreaAccess.amusementArea)
                areaAccessArray.append(AreaAccess.kitchenArea)
                areaAccessArray.append(AreaAccess.rideControlArea)
                areaAccessArray.append(AreaAccess.maintenanceArea)
                areaAccessArray.append(AreaAccess.officeArea)
                rideAccessArray.append(RideAccess.allRides)
                discountFood = 25
                discountMerchandise = 25
            case .contract:
                switch projectNumber!
                {
                case 1001:
                    areaAccessArray.append(AreaAccess.amusementArea)
                    areaAccessArray.append(AreaAccess.amusementArea)
                    areaAccessArray.append(AreaAccess.rideControlArea)
                case 1002:
                    areaAccessArray.append(AreaAccess.amusementArea)
                    areaAccessArray.append(AreaAccess.amusementArea)
                    areaAccessArray.append(AreaAccess.rideControlArea)
                    areaAccessArray.append(AreaAccess.maintenanceArea)
                case 1003:
                    areaAccessArray.append(AreaAccess.amusementArea)
                    areaAccessArray.append(AreaAccess.amusementArea)
                    areaAccessArray.append(AreaAccess.rideControlArea)
                    areaAccessArray.append(AreaAccess.kitchenArea)
                    areaAccessArray.append(AreaAccess.maintenanceArea)
                    areaAccessArray.append(AreaAccess.officeArea)
                case 2001:
                    areaAccessArray.append(AreaAccess.officeArea)
                case 2002:
                    areaAccessArray.append(AreaAccess.kitchenArea)
                    areaAccessArray.append(AreaAccess.maintenanceArea)
                default:
                    break
                }
            case .vendor:
                switch companyName!
                {
                case "Acme":
                    areaAccessArray.append(AreaAccess.kitchenArea)
                case "Orkin":
                    areaAccessArray.append(AreaAccess.amusementArea)
                    areaAccessArray.append(AreaAccess.rideControlArea)
                    areaAccessArray.append(AreaAccess.kitchenArea)
                case "Fedex":
                    areaAccessArray.append(AreaAccess.maintenanceArea)
                    areaAccessArray.append(AreaAccess.officeArea)
                case "NW Electrical":
                    areaAccessArray.append(AreaAccess.amusementArea)
                    areaAccessArray.append(AreaAccess.rideControlArea)
                    areaAccessArray.append(AreaAccess.kitchenArea)
                    areaAccessArray.append(AreaAccess.maintenanceArea)
                    areaAccessArray.append(AreaAccess.officeArea)
                default:
                    break
                }
            }
        }
    }
    
    /**************************************************************************
     printRideAccess
     
     This function will print all of the access for rides. used for debugging
     
     parameters:
        None
     
     Returns:
        None
     
     **************************************************************************/
    
    func printRideAccess()
    {
        for rideAccess in rideAccessArray
        {
            print(rideAccess)
        }
    }
    
    /**************************************************************************
     printAreaAccess
     
     This function will print all of the access for areas. used for debugging
     
     parameters:
        None
     
     Returns:
        None
     
     **************************************************************************/
    
    func printAreaAccess()
    {
        for areaAccess in areaAccessArray
        {
            print(areaAccess)
        }
    }
    
}
