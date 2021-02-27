//
//  BudgetViewController.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import UIKit
import EventKit

class BudgetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBOutlet weak var rentTextField: UITextField!
    @IBOutlet weak var powerTextField: UITextField!
    @IBOutlet weak var waterTextField: UITextField!
    @IBOutlet weak var internetTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var transportationTextField: UITextField!
    @IBOutlet weak var recreationTextField: UITextField!
    
    @IBOutlet weak var monthButton: UIBarButtonItem!
    @IBOutlet weak var monthList: UITableView!
    let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    var currentMonth = 0
    var titleMonth = "January"
    
    var rent: Double = 0
    var power: Double = 0
    var water: Double = 0
    var internet: Double = 0
    var phone: Double = 0
    var food: Double = 0
    var transportation: Double = 0
    var recreation: Double = 0
    
    var categories: [Double] = []
    var textFields: [UITextField] = []
    
    var eventStore = EKEventStore()
    
    let moneyController = MoneyController.shared
    let context = CoreDataStack.shared.mainContext

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categories = [rent, power, water, internet, phone, food, transportation, recreation]
        textFields = [rentTextField, powerTextField, waterTextField, internetTextField, phoneTextField, foodTextField, transportationTextField, recreationTextField]
        
        monthList.layer.cornerRadius = 7
        monthList.layer.borderWidth = 0.5
        monthList.layer.borderColor = UIColor.gray.cgColor
        monthList.isHidden = true
        updateValues()
    }
    
    func firstInteraction() -> Bool {
        let defaults = UserDefaults.standard
        if let _ = defaults.string(forKey: "firstInteraction") {
            return false
        } else {
            defaults.set(true, forKey: "firstInteraction")
            return true
        }
    }
    
    func updateValues() {
        if let secondTab = self.tabBarController?.viewControllers?[1] as? ActualViewController {
            secondTab.rent = rent
            secondTab.power = power
            secondTab.water = water
            secondTab.internet = internet
            secondTab.phone = phone
            secondTab.food = food
            secondTab.transportation = transportation
            secondTab.recreation = recreation
            secondTab.titleMonth = titleMonth
        }
        
        if !firstInteraction() {
            for (i, textField) in textFields.enumerated() {
                let amount = moneyController.budgets[currentMonth][i].amount
                
                if amount > 0 {
                    textField.text = "$\(String(format: "%.2f", amount))"
                } else {
                    textField.text = ""
                }
            }
        }
        
        navBar.topItem?.title = "My \(titleMonth) Budget"
    }
    
    @IBAction func selectMonth(_ sender: Any) {
        if monthList.isHidden {
            monthList.isHidden = false
        } else {
            monthList.isHidden = true
        }
    }
    
    // MARK: - Enter Budget Amounts
    
    func showAddAlert(budget: String, category: Int, textField: UITextField) {
        let alert = UIAlertController(title: budget, message: "Enter budget amount:", preferredStyle: .alert)
        
        var amountTextField: UITextField?
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Amount:"
            alertTextField.keyboardType = .decimalPad
            amountTextField = alertTextField
        }
        
        let addAmountAction = UIAlertAction(title: "Add \(budget)", style: .default) { (_) in
            guard let amountText = amountTextField?.text,
                  let amount = Double(amountText) else { return }
            
            textField.text = "$\(String(format: "%.2f", amount))"
            
            self.moneyController.budgets[self.currentMonth][category].amount = amount
            self.categories[category] = amount
            
            try? self.context.save()
            
            self.updateValues()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(addAmountAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addRent(_ sender: Any) {
        showAddAlert(budget: "Rent", category: 0, textField: rentTextField)
    }
    
    @IBAction func addPower(_ sender: Any) {
        showAddAlert(budget: "Power", category: 1, textField: powerTextField)
    }
    
    @IBAction func addWater(_ sender: Any) {
        showAddAlert(budget: "Water", category: 2, textField: waterTextField)
    }
    
    @IBAction func addInternet(_ sender: Any) {
        showAddAlert(budget: "Internet", category: 3, textField: internetTextField)
    }
    
    @IBAction func addPhone(_ sender: Any) {
        showAddAlert(budget: "Phone", category: 4, textField: phoneTextField)
    }
    
    @IBAction func addFood(_ sender: Any) {
        showAddAlert(budget: "Food", category: 5, textField: foodTextField)
    }
    
    @IBAction func addTransportation(_ sender: Any) {
        showAddAlert(budget: "Transportation", category: 6, textField: transportationTextField)
    }
    
    @IBAction func addRecreation(_ sender: Any) {
        showAddAlert(budget: "Recreation", category: 7, textField: recreationTextField)
    }
    
    // MARK: - Add Payment Reminders
    
    func addReminder(budgetCategory: String, amount: Double) {
        eventStore.requestAccess(to: EKEntityType.reminder, completion: {
            granted, error in
            if (granted) && (error == nil) {
                print("granted \(granted)")
                
                let currencyAmount = String(format: "%.2f", amount)
                let reminder:EKReminder = EKReminder(eventStore: self.eventStore)
                reminder.title = "Pay the $\(currencyAmount) \(budgetCategory) bill in \(self.titleMonth)"
                
                let alarmTime = Date().addingTimeInterval(10)
                let alarm = EKAlarm(absoluteDate: alarmTime)
                reminder.addAlarm(alarm)
                
                reminder.calendar = self.eventStore.defaultCalendarForNewReminders()
                
                do {
                    try self.eventStore.save(reminder, commit: true)
                } catch {
                    print("Cannot save")
                    return
                }
                print("Reminder saved")
            }
        })
    }
    
    func showReminderAlert(budgetCategory: String, amount: Double) {
        let currencyAmount = String(format: "%.2f", amount)
        
        let alert = UIAlertController(title: "\(budgetCategory.capitalized) reminder added", message: "Reminder: Pay the $\(currencyAmount) \(budgetCategory) bill", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func rentRemindMe(_ sender: Any) {
        addReminder(budgetCategory: "rent", amount: rent)
        showReminderAlert(budgetCategory: "rent", amount: rent)
    }
    
    @IBAction func powerRemindMe(_ sender: Any) {
        addReminder(budgetCategory: "power", amount: power)
        showReminderAlert(budgetCategory: "power", amount: power)
    }
    
    @IBAction func waterRemindMe(_ sender: Any) {
        addReminder(budgetCategory: "water", amount: water)
        showReminderAlert(budgetCategory: "water", amount: water)
    }
    
    @IBAction func internetRemindMe(_ sender: Any) {
        addReminder(budgetCategory: "internet", amount: internet)
        showReminderAlert(budgetCategory: "internet", amount: internet)
    }
    
    @IBAction func phoneRemindMe(_ sender: Any) {
        addReminder(budgetCategory: "phone", amount: phone)
        showReminderAlert(budgetCategory: "phone", amount: phone)
    }
    
    @IBAction func foodRemindMe(_ sender: Any) {
        addReminder(budgetCategory: "food", amount: food)
        showReminderAlert(budgetCategory: "food", amount: food)
    }
    
    @IBAction func transportationRemindMe(_ sender: Any) {
        addReminder(budgetCategory: "transportation", amount: transportation)
        showReminderAlert(budgetCategory: "transportation", amount: transportation)
    }
    
    @IBAction func recreationRemindMe(_ sender: Any) {
        addReminder(budgetCategory: "recreation", amount: recreation)
        showReminderAlert(budgetCategory: "recreation", amount: recreation)
    }
    
    // MARK: - Month Selection
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        months.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MonthCell", for: indexPath)
        
        cell.textLabel?.text = months[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = months[indexPath.row]
        
        titleMonth = selectedItem
        
        currentMonth = indexPath.row
        
        monthList.isHidden = true
        
        updateValues()
    }

}
