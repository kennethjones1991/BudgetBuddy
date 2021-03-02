//
//  MoneyController.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import Foundation
import CoreData

// I was going to use enums, but just decided to use the actual numbers instead.
// These enums are still commented here for reference to which numbers go to which values.
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
    
    // Budgets
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
    
    // Actuals
    var janRentActual = Budget()
    var janPowerActual = Budget()
    var janWaterActual = Budget()
    var janInternetActual = Budget()
    var janPhoneActual = Budget()
    var janFoodActual = Budget()
    var janTransportationActual = Budget()
    var janRecreationActual = Budget()
    
    var febRentActual = Budget()
    var febPowerActual = Budget()
    var febWaterActual = Budget()
    var febInternetActual = Budget()
    var febPhoneActual = Budget()
    var febFoodActual = Budget()
    var febTransportationActual = Budget()
    var febRecreationActual = Budget()
    
    var marRentActual = Budget()
    var marPowerActual = Budget()
    var marWaterActual = Budget()
    var marInternetActual = Budget()
    var marPhoneActual = Budget()
    var marFoodActual = Budget()
    var marTransportationActual = Budget()
    var marRecreationActual = Budget()
    
    var aprRentActual = Budget()
    var aprPowerActual = Budget()
    var aprWaterActual = Budget()
    var aprInternetActual = Budget()
    var aprPhoneActual = Budget()
    var aprFoodActual = Budget()
    var aprTransportationActual = Budget()
    var aprRecreationActual = Budget()
    
    var mayRentActual = Budget()
    var mayPowerActual = Budget()
    var mayWaterActual = Budget()
    var mayInternetActual = Budget()
    var mayPhoneActual = Budget()
    var mayFoodActual = Budget()
    var mayTransportationActual = Budget()
    var mayRecreationActual = Budget()
    
    var junRentActual = Budget()
    var junPowerActual = Budget()
    var junWaterActual = Budget()
    var junInternetActual = Budget()
    var junPhoneActual = Budget()
    var junFoodActual = Budget()
    var junTransportationActual = Budget()
    var junRecreationActual = Budget()
    
    var julRentActual = Budget()
    var julPowerActual = Budget()
    var julWaterActual = Budget()
    var julInternetActual = Budget()
    var julPhoneActual = Budget()
    var julFoodActual = Budget()
    var julTransportationActual = Budget()
    var julRecreationActual = Budget()
    
    var augRentActual = Budget()
    var augPowerActual = Budget()
    var augWaterActual = Budget()
    var augInternetActual = Budget()
    var augPhoneActual = Budget()
    var augFoodActual = Budget()
    var augTransportationActual = Budget()
    var augRecreationActual = Budget()
    
    var sepRentActual = Budget()
    var sepPowerActual = Budget()
    var sepWaterActual = Budget()
    var sepInternetActual = Budget()
    var sepPhoneActual = Budget()
    var sepFoodActual = Budget()
    var sepTransportationActual = Budget()
    var sepRecreationActual = Budget()
    
    var octRentActual = Budget()
    var octPowerActual = Budget()
    var octWaterActual = Budget()
    var octInternetActual = Budget()
    var octPhoneActual = Budget()
    var octFoodActual = Budget()
    var octTransportationActual = Budget()
    var octRecreationActual = Budget()
    
    var novRentActual = Budget()
    var novPowerActual = Budget()
    var novWaterActual = Budget()
    var novInternetActual = Budget()
    var novPhoneActual = Budget()
    var novFoodActual = Budget()
    var novTransportationActual = Budget()
    var novRecreationActual = Budget()
    
    var decRentActual = Budget()
    var decPowerActual = Budget()
    var decWaterActual = Budget()
    var decInternetActual = Budget()
    var decPhoneActual = Budget()
    var decFoodActual = Budget()
    var decTransportationActual = Budget()
    var decRecreationActual = Budget()
    
    var janActuals: [Budget] = []
    var febActuals: [Budget] = []
    var marActuals: [Budget] = []
    var aprActuals: [Budget] = []
    var mayActuals: [Budget] = []
    var junActuals: [Budget] = []
    var julActuals: [Budget] = []
    var augActuals: [Budget] = []
    var sepActuals: [Budget] = []
    var octActuals: [Budget] = []
    var novActuals: [Budget] = []
    var decActuals: [Budget] = []
    
    var actuals: [[Budget]] = []
    
    var context = CoreDataStack.shared.mainContext
    
    init() {
        populateBudgets()
        populateActuals()
    }
    
    // MARK: - Fetch and populate budgets
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
        
        fetchBudgets.predicate = NSPredicate(format: "%K == true", #keyPath(Budget.budget))
        
        fetchBudgets.sortDescriptors = [
            NSSortDescriptor(key: "month", ascending: true),
            NSSortDescriptor(key: "category", ascending: true)
        ]
        
        guard let budgetResults = try? context.fetch(fetchBudgets) else { return }
        
        // There should be either 0 or 96 results every time no matter what; otherwise there's an error
        print("Number of results: \(budgetResults.count)")
        if budgetResults.count == 0 {
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
            var x = 0
            var y = 0
            
            for result in budgetResults {
                budgets[x][y] = result
                
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
    
    // MARK: - Fetch and populate actuals
    func populateActuals() {
        janActuals = [janRentActual, janPowerActual, janWaterActual, janInternetActual, janPhoneActual, janFoodActual, janTransportationActual, janRecreationActual]
        febActuals = [febRentActual, febPowerActual, febWaterActual, febInternetActual, febPhoneActual, febFoodActual, febTransportationActual, febRecreationActual]
        marActuals = [marRentActual, marPowerActual, marWaterActual, marInternetActual, marPhoneActual, marFoodActual, marTransportationActual, marRecreationActual]
        aprActuals = [aprRentActual, aprPowerActual, aprWaterActual, aprInternetActual, aprPhoneActual, aprFoodActual, aprTransportationActual, aprRecreationActual]
        mayActuals = [mayRentActual, mayPowerActual, mayWaterActual, mayInternetActual, mayPhoneActual, mayFoodActual, mayTransportationActual, mayRecreationActual]
        junActuals = [junRentActual, junPowerActual, junWaterActual, junInternetActual, junPhoneActual, junFoodActual, junTransportationActual, junRecreationActual]
        julActuals = [julRentActual, julPowerActual, julWaterActual, julInternetActual, julPhoneActual, julFoodActual, julTransportationActual, julRecreationActual]
        augActuals = [augRentActual, augPowerActual, augWaterActual, augInternetActual, augPhoneActual, augFoodActual, augTransportationActual, augRecreationActual]
        sepActuals = [sepRentActual, sepPowerActual, sepWaterActual, sepInternetActual, sepPhoneActual, sepFoodActual, sepTransportationActual, sepRecreationActual]
        octActuals = [octRentActual, octPowerActual, octWaterActual, octInternetActual, octPhoneActual, octFoodActual, octTransportationActual, octRecreationActual]
        novActuals = [novRentActual, novPowerActual, novWaterActual, novInternetActual, novPhoneActual, novFoodActual, novTransportationActual, novRecreationActual]
        decActuals = [decRentActual, decPowerActual, decWaterActual, decInternetActual, decPhoneActual, decFoodActual, decTransportationActual, decRecreationActual]

        actuals = [janActuals, febActuals, marActuals, aprActuals, mayActuals, junActuals, julActuals, augActuals, sepActuals, octActuals, novActuals, decActuals]
        
        let fetchActuals: NSFetchRequest<Budget> = Budget.fetchRequest()
        
        fetchActuals.predicate = NSPredicate(format: "%K == false", #keyPath(Budget.budget))
        
        fetchActuals.sortDescriptors = [
            NSSortDescriptor(key: "month", ascending: true),
            NSSortDescriptor(key: "category", ascending: true)
        ]
        
        guard let actualResults = try? context.fetch(fetchActuals) else { return }
        
        // There should be either 0 or 96 results every time no matter what; otherwise there's an error
        print("Number of results: \(actualResults.count)")
        if actualResults.count == 0 {
            // Create new actuals and add to Core Data
            janRentActual = Budget(month: 0, category: 0, amount: 0, budget: false)
            janPowerActual = Budget(month: 0, category: 1, amount: 0, budget: false)
            janWaterActual = Budget(month: 0, category: 2, amount: 0, budget: false)
            janInternetActual = Budget(month: 0, category: 3, amount: 0, budget: false)
            janPhoneActual = Budget(month: 0, category: 4, amount: 0, budget: false)
            janFoodActual = Budget(month: 0, category: 5, amount: 0, budget: false)
            janTransportationActual = Budget(month: 0, category: 6, amount: 0, budget: false)
            janRecreationActual = Budget(month: 0, category: 7, amount: 0, budget: false)
            
            febRentActual = Budget(month: 1, category: 0, amount: 0, budget: false)
            febPowerActual = Budget(month: 1, category: 1, amount: 0, budget: false)
            febWaterActual = Budget(month: 1, category: 2, amount: 0, budget: false)
            febInternetActual = Budget(month: 1, category: 3, amount: 0, budget: false)
            febPhoneActual = Budget(month: 1, category: 4, amount: 0, budget: false)
            febFoodActual = Budget(month: 1, category: 5, amount: 0, budget: false)
            febTransportationActual = Budget(month: 1, category: 6, amount: 0, budget: false)
            febRecreationActual = Budget(month: 1, category: 7, amount: 0, budget: false)
            
            marRentActual = Budget(month: 2, category: 0, amount: 0, budget: false)
            marPowerActual = Budget(month: 2, category: 1, amount: 0, budget: false)
            marWaterActual = Budget(month: 2, category: 2, amount: 0, budget: false)
            marInternetActual = Budget(month: 2, category: 3, amount: 0, budget: false)
            marPhoneActual = Budget(month: 2, category: 4, amount: 0, budget: false)
            marFoodActual = Budget(month: 2, category: 5, amount: 0, budget: false)
            marTransportationActual = Budget(month: 2, category: 6, amount: 0, budget: false)
            marRecreationActual = Budget(month: 2, category: 7, amount: 0, budget: false)
            
            aprRentActual = Budget(month: 3, category: 0, amount: 0, budget: false)
            aprPowerActual = Budget(month: 3, category: 1, amount: 0, budget: false)
            aprWaterActual = Budget(month: 3, category: 2, amount: 0, budget: false)
            aprInternetActual = Budget(month: 3, category: 3, amount: 0, budget: false)
            aprPhoneActual = Budget(month: 3, category: 4, amount: 0, budget: false)
            aprFoodActual = Budget(month: 3, category: 5, amount: 0, budget: false)
            aprTransportationActual = Budget(month: 3, category: 6, amount: 0, budget: false)
            aprRecreationActual = Budget(month: 3, category: 7, amount: 0, budget: false)
            
            mayRentActual = Budget(month: 4, category: 0, amount: 0, budget: false)
            mayPowerActual = Budget(month: 4, category: 1, amount: 0, budget: false)
            mayWaterActual = Budget(month: 4, category: 2, amount: 0, budget: false)
            mayInternetActual = Budget(month: 4, category: 3, amount: 0, budget: false)
            mayPhoneActual = Budget(month: 4, category: 4, amount: 0, budget: false)
            mayFoodActual = Budget(month: 4, category: 5, amount: 0, budget: false)
            mayTransportationActual = Budget(month: 4, category: 6, amount: 0, budget: false)
            mayRecreationActual = Budget(month: 4, category: 7, amount: 0, budget: false)
            
            junRentActual = Budget(month: 5, category: 0, amount: 0, budget: false)
            junPowerActual = Budget(month: 5, category: 1, amount: 0, budget: false)
            junWaterActual = Budget(month: 5, category: 2, amount: 0, budget: false)
            junInternetActual = Budget(month: 5, category: 3, amount: 0, budget: false)
            junPhoneActual = Budget(month: 5, category: 4, amount: 0, budget: false)
            junFoodActual = Budget(month: 5, category: 5, amount: 0, budget: false)
            junTransportationActual = Budget(month: 5, category: 6, amount: 0, budget: false)
            junRecreationActual = Budget(month: 5, category: 7, amount: 0, budget: false)
            
            julRentActual = Budget(month: 6, category: 0, amount: 0, budget: false)
            julPowerActual = Budget(month: 6, category: 1, amount: 0, budget: false)
            julWaterActual = Budget(month: 6, category: 2, amount: 0, budget: false)
            julInternetActual = Budget(month: 6, category: 3, amount: 0, budget: false)
            julPhoneActual = Budget(month: 6, category: 4, amount: 0, budget: false)
            julFoodActual = Budget(month: 6, category: 5, amount: 0, budget: false)
            julTransportationActual = Budget(month: 6, category: 6, amount: 0, budget: false)
            julRecreationActual = Budget(month: 6, category: 7, amount: 0, budget: false)
            
            augRentActual = Budget(month: 7, category: 0, amount: 0, budget: false)
            augPowerActual = Budget(month: 7, category: 1, amount: 0, budget: false)
            augWaterActual = Budget(month: 7, category: 2, amount: 0, budget: false)
            augInternetActual = Budget(month: 7, category: 3, amount: 0, budget: false)
            augPhoneActual = Budget(month: 7, category: 4, amount: 0, budget: false)
            augFoodActual = Budget(month: 7, category: 5, amount: 0, budget: false)
            augTransportationActual = Budget(month: 7, category: 6, amount: 0, budget: false)
            augRecreationActual = Budget(month: 7, category: 7, amount: 0, budget: false)
            
            sepRentActual = Budget(month: 8, category: 0, amount: 0, budget: false)
            sepPowerActual = Budget(month: 8, category: 1, amount: 0, budget: false)
            sepWaterActual = Budget(month: 8, category: 2, amount: 0, budget: false)
            sepInternetActual = Budget(month: 8, category: 3, amount: 0, budget: false)
            sepPhoneActual = Budget(month: 8, category: 4, amount: 0, budget: false)
            sepFoodActual = Budget(month: 8, category: 5, amount: 0, budget: false)
            sepTransportationActual = Budget(month: 8, category: 6, amount: 0, budget: false)
            sepRecreationActual = Budget(month: 8, category: 7, amount: 0, budget: false)
            
            octRentActual = Budget(month: 9, category: 0, amount: 0, budget: false)
            octPowerActual = Budget(month: 9, category: 1, amount: 0, budget: false)
            octWaterActual = Budget(month: 9, category: 2, amount: 0, budget: false)
            octInternetActual = Budget(month: 9, category: 3, amount: 0, budget: false)
            octPhoneActual = Budget(month: 9, category: 4, amount: 0, budget: false)
            octFoodActual = Budget(month: 9, category: 5, amount: 0, budget: false)
            octTransportationActual = Budget(month: 9, category: 6, amount: 0, budget: false)
            octRecreationActual = Budget(month: 9, category: 7, amount: 0, budget: false)
            
            novRentActual = Budget(month: 10, category: 0, amount: 0, budget: false)
            novPowerActual = Budget(month: 10, category: 1, amount: 0, budget: false)
            novWaterActual = Budget(month: 10, category: 2, amount: 0, budget: false)
            novInternetActual = Budget(month: 10, category: 3, amount: 0, budget: false)
            novPhoneActual = Budget(month: 10, category: 4, amount: 0, budget: false)
            novFoodActual = Budget(month: 10, category: 5, amount: 0, budget: false)
            novTransportationActual = Budget(month: 10, category: 6, amount: 0, budget: false)
            novRecreationActual = Budget(month: 10, category: 7, amount: 0, budget: false)
            
            decRentActual = Budget(month: 11, category: 0, amount: 0, budget: false)
            decPowerActual = Budget(month: 11, category: 1, amount: 0, budget: false)
            decWaterActual = Budget(month: 11, category: 2, amount: 0, budget: false)
            decInternetActual = Budget(month: 11, category: 3, amount: 0, budget: false)
            decPhoneActual = Budget(month: 11, category: 4, amount: 0, budget: false)
            decFoodActual = Budget(month: 11, category: 5, amount: 0, budget: false)
            decTransportationActual = Budget(month: 11, category: 6, amount: 0, budget: false)
            decRecreationActual = Budget(month: 11, category: 7, amount: 0, budget: false)
            
            janActuals = [janRentActual, janPowerActual, janWaterActual, janInternetActual, janPhoneActual, janFoodActual, janTransportationActual, janRecreationActual]
            febActuals = [febRentActual, febPowerActual, febWaterActual, febInternetActual, febPhoneActual, febFoodActual, febTransportationActual, febRecreationActual]
            marActuals = [marRentActual, marPowerActual, marWaterActual, marInternetActual, marPhoneActual, marFoodActual, marTransportationActual, marRecreationActual]
            aprActuals = [aprRentActual, aprPowerActual, aprWaterActual, aprInternetActual, aprPhoneActual, aprFoodActual, aprTransportationActual, aprRecreationActual]
            mayActuals = [mayRentActual, mayPowerActual, mayWaterActual, mayInternetActual, mayPhoneActual, mayFoodActual, mayTransportationActual, mayRecreationActual]
            junActuals = [junRentActual, junPowerActual, junWaterActual, junInternetActual, junPhoneActual, junFoodActual, junTransportationActual, junRecreationActual]
            julActuals = [julRentActual, julPowerActual, julWaterActual, julInternetActual, julPhoneActual, julFoodActual, julTransportationActual, julRecreationActual]
            augActuals = [augRentActual, augPowerActual, augWaterActual, augInternetActual, augPhoneActual, augFoodActual, augTransportationActual, augRecreationActual]
            sepActuals = [sepRentActual, sepPowerActual, sepWaterActual, sepInternetActual, sepPhoneActual, sepFoodActual, sepTransportationActual, sepRecreationActual]
            octActuals = [octRentActual, octPowerActual, octWaterActual, octInternetActual, octPhoneActual, octFoodActual, octTransportationActual, octRecreationActual]
            novActuals = [novRentActual, novPowerActual, novWaterActual, novInternetActual, novPhoneActual, novFoodActual, novTransportationActual, novRecreationActual]
            decActuals = [decRentActual, decPowerActual, decWaterActual, decInternetActual, decPhoneActual, decFoodActual, decTransportationActual, decRecreationActual]

            actuals = [janActuals, febActuals, marActuals, aprActuals, mayActuals, junActuals, julActuals, augActuals, sepActuals, octActuals, novActuals, decActuals]
            
            try? context.save()
        } else {
            var x = 0
            var y = 0
            
            for result in actualResults {
                actuals[x][y] = result
                
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
}
