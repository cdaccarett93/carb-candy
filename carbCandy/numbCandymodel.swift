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
var currentglucose:Double, targetglucose:Double, insensitivity:Double, carbratio:Double

init (currentglucose:Double, targetglucose:Double, insensitivity:Double, carbratio:Double) {
    self.currentglucose = currentglucose
    self.targetglucose = targetglucose
    self.insensitivity = insensitivity
    self.carbratio = carbratio
}
    
    func totalCandy()-> Double {
        return round((targetglucose - currentglucose) / ((insensitivity/carbratio) * 0.88))
    }

}
