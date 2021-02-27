//
//  MoneyController.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import Foundation
import CoreData

//enum Month: Int {
//    case january = 0
//    case february = 1
//    case march = 2
//    case april = 3
//    case may = 4
//    case june = 5
//    case july = 6
//    case august = 7
//    case september = 8
//    case october = 9
//    case november = 10
//    case december = 11
//}
//
//enum Category: Int {
//    case rent = 0
//    case power = 1
//    case water = 2
//    case internet = 3
//    case phone = 4
//    case food = 5
//    case transportation = 6
//    case recreation = 7
//}

class MoneyController {
    static let shared = MoneyController()
    
    var janRentBudget = Budget()
    var janPowerBudget = Budget()
    var janWaterBudget = Budget()
    var janInternetBudget = Budget()
    var janPhoneBudget = Budget()
    var janFoodBudget = Budget()
    var janTransportationBudget = Budget()
    var janRecreationBudget = Budget()
    
    var febRentBudget = Budget()
    var febPowerBudget = Budget()
    var febWaterBudget = Budget()
    var febInternetBudget = Budget()
    var febPhoneBudget = Budget()
    var febFoodBudget = Budget()
    var febTransportationBudget = Budget()
    var febRecreationBudget = Budget()
    
    var marRentBudget = Budget()
    var marPowerBudget = Budget()
    var marWaterBudget = Budget()
    var marInternetBudget = Budget()
    var marPhoneBudget = Budget()
    var marFoodBudget = Budget()
    var marTransportationBudget = Budget()
    var marRecreationBudget = Budget()
    
    var aprRentBudget = Budget()
    var aprPowerBudget = Budget()
    var aprWaterBudget = Budget()
    var aprInternetBudget = Budget()
    var aprPhoneBudget = Budget()
    var aprFoodBudget = Budget()
    var aprTransportationBudget = Budget()
    var aprRecreationBudget = Budget()
    
    var mayRentBudget = Budget()
    var mayPowerBudget = Budget()
    var mayWaterBudget = Budget()
    var mayInternetBudget = Budget()
    var mayPhoneBudget = Budget()
    var mayFoodBudget = Budget()
    var mayTransportationBudget = Budget()
    var mayRecreationBudget = Budget()
    
    var junRentBudget = Budget()
    var junPowerBudget = Budget()
    var junWaterBudget = Budget()
    var junInternetBudget = Budget()
    var junPhoneBudget = Budget()
    var junFoodBudget = Budget()
    var junTransportationBudget = Budget()
    var junRecreationBudget = Budget()
    
    var julRentBudget = Budget()
    var julPowerBudget = Budget()
    var julWaterBudget = Budget()
    var julInternetBudget = Budget()
    var julPhoneBudget = Budget()
    var julFoodBudget = Budget()
    var julTransportationBudget = Budget()
    var julRecreationBudget = Budget()
    
    var augRentBudget = Budget()
    var augPowerBudget = Budget()
    var augWaterBudget = Budget()
    var augInternetBudget = Budget()
    var augPhoneBudget = Budget()
    var augFoodBudget = Budget()
    var augTransportationBudget = Budget()
    var augRecreationBudget = Budget()
    
    var sepRentBudget = Budget()
    var sepPowerBudget = Budget()
    var sepWaterBudget = Budget()
    var sepInternetBudget = Budget()
    var sepPhoneBudget = Budget()
    var sepFoodBudget = Budget()
    var sepTransportationBudget = Budget()
    var sepRecreationBudget = Budget()
    
    var octRentBudget = Budget()
    var octPowerBudget = Budget()
    var octWaterBudget = Budget()
    var octInternetBudget = Budget()
    var octPhoneBudget = Budget()
    var octFoodBudget = Budget()
    var octTransportationBudget = Budget()
    var octRecreationBudget = Budget()
    
    var novRentBudget = Budget()
    var novPowerBudget = Budget()
    var novWaterBudget = Budget()
    var novInternetBudget = Budget()
    var novPhoneBudget = Budget()
    var novFoodBudget = Budget()
    var novTransportationBudget = Budget()
    var novRecreationBudget = Budget()
    
    var decRentBudget = Budget()
    var decPowerBudget = Budget()
    var decWaterBudget = Budget()
    var decInternetBudget = Budget()
    var decPhoneBudget = Budget()
    var decFoodBudget = Budget()
    var decTransportationBudget = Budget()
    var decRecreationBudget = Budget()
    
    var janBudgets: [Budget] = []
    var febBudgets: [Budget] = []
    var marBudgets: [Budget] = []
    var aprBudgets: [Budget] = []
    var mayBudgets: [Budget] = []
    var junBudgets: [Budget] = []
    var julBudgets: [Budget] = []
    var augBudgets: [Budget] = []
    var sepBudgets: [Budget] = []
    var octBudgets: [Budget] = []
    var novBudgets: [Budget] = []
    var decBudgets: [Budget] = []
    
    var budgets: [[Budget]] = []
    
    var context = CoreDataStack.shared.mainContext
    
    init() {
        populateBudgets()
    }
    
    func populateBudgets() {
        janBudgets = [janRentBudget, janPowerBudget, janWaterBudget, janInternetBudget, janPhoneBudget, janFoodBudget, janTransportationBudget, janRecreationBudget]
        febBudgets = [febRentBudget, febPowerBudget, febWaterBudget, febInternetBudget, febPhoneBudget, febFoodBudget, febTransportationBudget, febRecreationBudget]
        marBudgets = [marRentBudget, marPowerBudget, marWaterBudget, marInternetBudget, marPhoneBudget, marFoodBudget, marTransportationBudget, marRecreationBudget]
        aprBudgets = [aprRentBudget, aprPowerBudget, aprWaterBudget, aprInternetBudget, aprPhoneBudget, aprFoodBudget, aprTransportationBudget, aprRecreationBudget]
        mayBudgets = [mayRentBudget, mayPowerBudget, mayWaterBudget, mayInternetBudget, mayPhoneBudget, mayFoodBudget, mayTransportationBudget, mayRecreationBudget]
        junBudgets = [junRentBudget, junPowerBudget, junWaterBudget, junInternetBudget, junPhoneBudget, junFoodBudget, junTransportationBudget, junRecreationBudget]
        julBudgets = [julRentBudget, julPowerBudget, julWaterBudget, julInternetBudget, julPhoneBudget, julFoodBudget, julTransportationBudget, julRecreationBudget]
        augBudgets = [augRentBudget, augPowerBudget, augWaterBudget, augInternetBudget, augPhoneBudget, augFoodBudget, augTransportationBudget, augRecreationBudget]
        sepBudgets = [sepRentBudget, sepPowerBudget, sepWaterBudget, sepInternetBudget, sepPhoneBudget, sepFoodBudget, sepTransportationBudget, sepRecreationBudget]
        octBudgets = [octRentBudget, octPowerBudget, octWaterBudget, octInternetBudget, octPhoneBudget, octFoodBudget, octTransportationBudget, octRecreationBudget]
        novBudgets = [novRentBudget, novPowerBudget, novWaterBudget, novInternetBudget, novPhoneBudget, novFoodBudget, novTransportationBudget, novRecreationBudget]
        decBudgets = [decRentBudget, decPowerBudget, decWaterBudget, decInternetBudget, decPhoneBudget, decFoodBudget, decTransportationBudget, decRecreationBudget]

        budgets = [janBudgets, febBudgets, marBudgets, aprBudgets, mayBudgets, junBudgets, julBudgets, augBudgets, sepBudgets, octBudgets, novBudgets, decBudgets]
        
        let fetchBudgets: NSFetchRequest<Budget> = Budget.fetchRequest()
        fetchBudgets.sortDescriptors = [
            NSSortDescriptor(key: "month", ascending: true),
            NSSortDescriptor(key: "category", ascending: true)
        ]
        
        guard let results = try? context.fetch(fetchBudgets) else { return }
        
        // There should be either 0 or 96 results every time no matter what; otherwise there's an error
        print("Number of results: \(results.count)")
        if results.count == 0 {
            // Create new budgets and add to Core Data
            janRentBudget = Budget(month: 0, category: 0, amount: 0, budget: true)
            janPowerBudget = Budget(month: 0, category: 1, amount: 0, budget: true)
            janWaterBudget = Budget(month: 0, category: 2, amount: 0, budget: true)
            janInternetBudget = Budget(month: 0, category: 3, amount: 0, budget: true)
            janPhoneBudget = Budget(month: 0, category: 4, amount: 0, budget: true)
            janFoodBudget = Budget(month: 0, category: 5, amount: 0, budget: true)
            janTransportationBudget = Budget(month: 0, category: 6, amount: 0, budget: true)
            janRecreationBudget = Budget(month: 0, category: 7, amount: 0, budget: true)
            
            febRentBudget = Budget(month: 1, category: 0, amount: 0, budget: true)
            febPowerBudget = Budget(month: 1, category: 1, amount: 0, budget: true)
            febWaterBudget = Budget(month: 1, category: 2, amount: 0, budget: true)
            febInternetBudget = Budget(month: 1, category: 3, amount: 0, budget: true)
            febPhoneBudget = Budget(month: 1, category: 4, amount: 0, budget: true)
            febFoodBudget = Budget(month: 1, category: 5, amount: 0, budget: true)
            febTransportationBudget = Budget(month: 1, category: 6, amount: 0, budget: true)
            febRecreationBudget = Budget(month: 1, category: 7, amount: 0, budget: true)
            
            marRentBudget = Budget(month: 2, category: 0, amount: 0, budget: true)
            marPowerBudget = Budget(month: 2, category: 1, amount: 0, budget: true)
            marWaterBudget = Budget(month: 2, category: 2, amount: 0, budget: true)
            marInternetBudget = Budget(month: 2, category: 3, amount: 0, budget: true)
            marPhoneBudget = Budget(month: 2, category: 4, amount: 0, budget: true)
            marFoodBudget = Budget(month: 2, category: 5, amount: 0, budget: true)
            marTransportationBudget = Budget(month: 2, category: 6, amount: 0, budget: true)
            marRecreationBudget = Budget(month: 2, category: 7, amount: 0, budget: true)
            
            aprRentBudget = Budget(month: 3, category: 0, amount: 0, budget: true)
            aprPowerBudget = Budget(month: 3, category: 1, amount: 0, budget: true)
            aprWaterBudget = Budget(month: 3, category: 2, amount: 0, budget: true)
            aprInternetBudget = Budget(month: 3, category: 3, amount: 0, budget: true)
            aprPhoneBudget = Budget(month: 3, category: 4, amount: 0, budget: true)
            aprFoodBudget = Budget(month: 3, category: 5, amount: 0, budget: true)
            aprTransportationBudget = Budget(month: 3, category: 6, amount: 0, budget: true)
            aprRecreationBudget = Budget(month: 3, category: 7, amount: 0, budget: true)
            
            mayRentBudget = Budget(month: 4, category: 0, amount: 0, budget: true)
            mayPowerBudget = Budget(month: 4, category: 1, amount: 0, budget: true)
            mayWaterBudget = Budget(month: 4, category: 2, amount: 0, budget: true)
            mayInternetBudget = Budget(month: 4, category: 3, amount: 0, budget: true)
            mayPhoneBudget = Budget(month: 4, category: 4, amount: 0, budget: true)
            mayFoodBudget = Budget(month: 4, category: 5, amount: 0, budget: true)
            mayTransportationBudget = Budget(month: 4, category: 6, amount: 0, budget: true)
            mayRecreationBudget = Budget(month: 4, category: 7, amount: 0, budget: true)
            
            junRentBudget = Budget(month: 5, category: 0, amount: 0, budget: true)
            junPowerBudget = Budget(month: 5, category: 1, amount: 0, budget: true)
            junWaterBudget = Budget(month: 5, category: 2, amount: 0, budget: true)
            junInternetBudget = Budget(month: 5, category: 3, amount: 0, budget: true)
            junPhoneBudget = Budget(month: 5, category: 4, amount: 0, budget: true)
            junFoodBudget = Budget(month: 5, category: 5, amount: 0, budget: true)
            junTransportationBudget = Budget(month: 5, category: 6, amount: 0, budget: true)
            junRecreationBudget = Budget(month: 5, category: 7, amount: 0, budget: true)
            
            julRentBudget = Budget(month: 6, category: 0, amount: 0, budget: true)
            julPowerBudget = Budget(month: 6, category: 1, amount: 0, budget: true)
            julWaterBudget = Budget(month: 6, category: 2, amount: 0, budget: true)
            julInternetBudget = Budget(month: 6, category: 3, amount: 0, budget: true)
            julPhoneBudget = Budget(month: 6, category: 4, amount: 0, budget: true)
            julFoodBudget = Budget(month: 6, category: 5, amount: 0, budget: true)
            julTransportationBudget = Budget(month: 6, category: 6, amount: 0, budget: true)
            julRecreationBudget = Budget(month: 6, category: 7, amount: 0, budget: true)
            
            augRentBudget = Budget(month: 7, category: 0, amount: 0, budget: true)
            augPowerBudget = Budget(month: 7, category: 1, amount: 0, budget: true)
            augWaterBudget = Budget(month: 7, category: 2, amount: 0, budget: true)
            augInternetBudget = Budget(month: 7, category: 3, amount: 0, budget: true)
            augPhoneBudget = Budget(month: 7, category: 4, amount: 0, budget: true)
            augFoodBudget = Budget(month: 7, category: 5, amount: 0, budget: true)
            augTransportationBudget = Budget(month: 7, category: 6, amount: 0, budget: true)
            augRecreationBudget = Budget(month: 7, category: 7, amount: 0, budget: true)
            
            sepRentBudget = Budget(month: 8, category: 0, amount: 0, budget: true)
            sepPowerBudget = Budget(month: 8, category: 1, amount: 0, budget: true)
            sepWaterBudget = Budget(month: 8, category: 2, amount: 0, budget: true)
            sepInternetBudget = Budget(month: 8, category: 3, amount: 0, budget: true)
            sepPhoneBudget = Budget(month: 8, category: 4, amount: 0, budget: true)
            sepFoodBudget = Budget(month: 8, category: 5, amount: 0, budget: true)
            sepTransportationBudget = Budget(month: 8, category: 6, amount: 0, budget: true)
            sepRecreationBudget = Budget(month: 8, category: 7, amount: 0, budget: true)
            
            octRentBudget = Budget(month: 9, category: 0, amount: 0, budget: true)
            octPowerBudget = Budget(month: 9, category: 1, amount: 0, budget: true)
            octWaterBudget = Budget(month: 9, category: 2, amount: 0, budget: true)
            octInternetBudget = Budget(month: 9, category: 3, amount: 0, budget: true)
            octPhoneBudget = Budget(month: 9, category: 4, amount: 0, budget: true)
            octFoodBudget = Budget(month: 9, category: 5, amount: 0, budget: true)
            octTransportationBudget = Budget(month: 9, category: 6, amount: 0, budget: true)
            octRecreationBudget = Budget(month: 9, category: 7, amount: 0, budget: true)
            
            novRentBudget = Budget(month: 10, category: 0, amount: 0, budget: true)
            novPowerBudget = Budget(month: 10, category: 1, amount: 0, budget: true)
            novWaterBudget = Budget(month: 10, category: 2, amount: 0, budget: true)
            novInternetBudget = Budget(month: 10, category: 3, amount: 0, budget: true)
            novPhoneBudget = Budget(month: 10, category: 4, amount: 0, budget: true)
            novFoodBudget = Budget(month: 10, category: 5, amount: 0, budget: true)
            novTransportationBudget = Budget(month: 10, category: 6, amount: 0, budget: true)
            novRecreationBudget = Budget(month: 10, category: 7, amount: 0, budget: true)
            
            decRentBudget = Budget(month: 11, category: 0, amount: 0, budget: true)
            decPowerBudget = Budget(month: 11, category: 1, amount: 0, budget: true)
            decWaterBudget = Budget(month: 11, category: 2, amount: 0, budget: true)
            decInternetBudget = Budget(month: 11, category: 3, amount: 0, budget: true)
            decPhoneBudget = Budget(month: 11, category: 4, amount: 0, budget: true)
            decFoodBudget = Budget(month: 11, category: 5, amount: 0, budget: true)
            decTransportationBudget = Budget(month: 11, category: 6, amount: 0, budget: true)
            decRecreationBudget = Budget(month: 11, category: 7, amount: 0, budget: true)
            
            janBudgets = [janRentBudget, janPowerBudget, janWaterBudget, janInternetBudget, janPhoneBudget, janFoodBudget, janTransportationBudget, janRecreationBudget]
            febBudgets = [febRentBudget, febPowerBudget, febWaterBudget, febInternetBudget, febPhoneBudget, febFoodBudget, febTransportationBudget, febRecreationBudget]
            marBudgets = [marRentBudget, marPowerBudget, marWaterBudget, marInternetBudget, marPhoneBudget, marFoodBudget, marTransportationBudget, marRecreationBudget]
            aprBudgets = [aprRentBudget, aprPowerBudget, aprWaterBudget, aprInternetBudget, aprPhoneBudget, aprFoodBudget, aprTransportationBudget, aprRecreationBudget]
            mayBudgets = [mayRentBudget, mayPowerBudget, mayWaterBudget, mayInternetBudget, mayPhoneBudget, mayFoodBudget, mayTransportationBudget, mayRecreationBudget]
            junBudgets = [junRentBudget, junPowerBudget, junWaterBudget, junInternetBudget, junPhoneBudget, junFoodBudget, junTransportationBudget, junRecreationBudget]
            julBudgets = [julRentBudget, julPowerBudget, julWaterBudget, julInternetBudget, julPhoneBudget, julFoodBudget, julTransportationBudget, julRecreationBudget]
            augBudgets = [augRentBudget, augPowerBudget, augWaterBudget, augInternetBudget, augPhoneBudget, augFoodBudget, augTransportationBudget, augRecreationBudget]
            sepBudgets = [sepRentBudget, sepPowerBudget, sepWaterBudget, sepInternetBudget, sepPhoneBudget, sepFoodBudget, sepTransportationBudget, sepRecreationBudget]
            octBudgets = [octRentBudget, octPowerBudget, octWaterBudget, octInternetBudget, octPhoneBudget, octFoodBudget, octTransportationBudget, octRecreationBudget]
            novBudgets = [novRentBudget, novPowerBudget, novWaterBudget, novInternetBudget, novPhoneBudget, novFoodBudget, novTransportationBudget, novRecreationBudget]
            decBudgets = [decRentBudget, decPowerBudget, decWaterBudget, decInternetBudget, decPhoneBudget, decFoodBudget, decTransportationBudget, decRecreationBudget]
            
            budgets = [janBudgets, febBudgets, marBudgets, aprBudgets, mayBudgets, junBudgets, julBudgets, augBudgets, sepBudgets, octBudgets, novBudgets, decBudgets]
            
            try? context.save()
        } else {
            // Populate budgets with data already stored
            print("😍Look at me; I'm the else.")
            var x = 0
            var y = 0
            
            for result in results {
                budgets[x][y] = result
//                print("😇Result: \(result.month)")
//                print("🚀Budget: \(budgets[x][y])")
                
                if y == 7 {
                    x += 1
                    y = 0
                } else {
                    y += 1
                }
            }
            
            try? context.save()
        }
    }
    
//    var janBudget = Budget(month: Month.january.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var febBudget = Budget(month: Month.february.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var marBudget = Budget(month: Month.march.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var aprBudget = Budget(month: Month.april.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var mayBudget = Budget(month: Month.may.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var junBudget = Budget(month: Month.june.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var julBudget = Budget(month: Month.july.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var augBudget = Budget(month: Month.august.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var sepBudget = Budget(month: Month.september.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var octBudget = Budget(month: Month.october.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var novBudget = Budget(month: Month.november.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var decBudget = Budget(month: Month.december.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
    
//    var janActual = Actual(month: Month.january.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var febActual = Actual(month: Month.february.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var marActual = Actual(month: Month.march.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var aprActual = Actual(month: Month.april.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var mayActual = Actual(month: Month.may.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var junActual = Actual(month: Month.june.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var julActual = Actual(month: Month.july.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var augActual = Actual(month: Month.august.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var sepActual = Actual(month: Month.september.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var octActual = Actual(month: Month.october.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var novActual = Actual(month: Month.november.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
//    var decActual = Actual(month: Month.december.rawValue, rent: 0, power: 0, water: 0, internet: 0, phone: 0, food: 0, transportation: 0, recreation: 0)
    
//    init() {
//        fetechObjects()
//    }
//
//    func fetechObjects() {
//        // load objects at start up
//    }
//
//    func doSomething() {
//
//    }
//
//    func addBUdget(budget: Budget) {
//
//        budgetArray.append(budget)
//
//        // Save to core data
//
//    }
}
