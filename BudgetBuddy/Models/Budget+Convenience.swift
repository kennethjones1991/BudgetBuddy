//
//  Budget+Convenience.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import Foundation
import CoreData

extension Budget {
    @discardableResult convenience init(month: Int,
                                        category: Int,
                                        amount: Double,
                                        budget: Bool,
                                        context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.month = Int16(month)
        self.category = Int16(category)
        self.amount = amount
        self.budget = budget
    }
}
