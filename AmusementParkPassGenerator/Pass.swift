//
//  Pass.swift
//  AmusementParkPassGenerator
//
//  Created by Alan Longcoy on 3/4/17.
//  Copyright © 2017 Alan Longcoy. All rights reserved.
//

import Foundation

enum RideAccess
{
    case allRides
    case skipLines
}

enum AreaAccess
{
    case amusementArea
    case kitchenArea
    case rideControlArea
    case maintenanceArea
    case officeArea
}

struct Pass
{
    var rideAccessArray: [RideAccess] = []
    var areaAccessArray: [AreaAccess] = []
    
    mutating func updatePass(guestType: GuestType?, employeeType: EmployeeType?)
    {
        rideAccessArray = []
        areaAccessArray = []
        
        areaAccessArray.append(AreaAccess.amusementArea)
        rideAccessArray.append(RideAccess.allRides)
        
        if guestType != nil
        {
            
            switch guestType!
            {
            case .classic:
                break
            case .freeChild:
                break
            case .vip:
                rideAccessArray.append(RideAccess.skipLines)
            }
        }
        
        if employeeType != nil
        {
            switch employeeType!
            {
            case .foodServices:
                areaAccessArray.append(AreaAccess.kitchenArea)
            case .rideServices:
                areaAccessArray.append(AreaAccess.rideControlArea)
            case .maintenance:
                areaAccessArray.append(AreaAccess.kitchenArea)
                areaAccessArray.append(AreaAccess.rideControlArea)
                areaAccessArray.append(AreaAccess.maintenanceArea)
            case .manager:
                areaAccessArray.append(AreaAccess.kitchenArea)
                areaAccessArray.append(AreaAccess.rideControlArea)
                areaAccessArray.append(AreaAccess.maintenanceArea)
                areaAccessArray.append(AreaAccess.officeArea)
            }
        }
    }
    
    func printRideAccess()
    {
        for rideAccess in rideAccessArray
        {
            print(rideAccess)
        }
    }
    
    func printAreaAccess()
    {
        for areaAccess in areaAccessArray
        {
            print(areaAccess)
        }
    }
    
}
