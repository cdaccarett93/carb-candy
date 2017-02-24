//
//  numbCandysmodel.swift
//  carbCandy
//
//  Created by Carlos Daccarett on 2/10/17.
//  Copyright © 2017 Carlos Daccarett. All rights reserved.
//

import Foundation

class numbCandy
{
var currentglucose:Double, targetglucose:Double, insensitivity:Double, carbratio:Double, carbperCandy:Double

init (currentglucose:Double, targetglucose:Double, insensitivity:Double, carbratio:Double, carbperCandy:Double) {
    self.currentglucose = currentglucose
    self.targetglucose = targetglucose
    self.insensitivity = insensitivity
    self.carbratio = carbratio
    self.carbperCandy = carbperCandy
}
    
    func totalCandy()-> Double {
        return round((targetglucose - currentglucose) / ((insensitivity/carbratio) * carbperCandy))
    }

}
