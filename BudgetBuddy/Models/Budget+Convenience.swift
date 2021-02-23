//
//  Budget+Convenience.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import Foundation
import CoreData

extension Budget {
    @discardableResult convenience init(rent: Double?,
                                        power: Double?,
                                        water: Double?,
                                        internet: Double?,
                                        phone: Double?,
                                        food: Double?,
                                        transportation: Double?,
                                        recreation: Double?,
                                        context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.rent = rent ?? 0
        self.power = power ?? 0
        self.water = water ?? 0
        self.internet = internet ?? 0
        self.phone = phone ?? 0
        self.food = food ?? 0
        self.transportation = transportation ?? 0
        self.recreation = recreation ?? 0
    }
}
