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
    var titleMonth = "January"
    
    var rent: Double = 0
    var power: Double = 0
    var water: Double = 0
    var internet: Double = 0
    var phone: Double = 0
    var food: Double = 0
    var transportation: Double = 0
    var recreation: Double = 0
    
    var eventStore = EKEventStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.topItem?.title = "My \(titleMonth) Budget"
        monthList.layer.cornerRadius = 7
        monthList.layer.borderWidth = 0.5
        monthList.layer.borderColor = UIColor.gray.cgColor
        monthList.isHidden = true
        updateValues()
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
    }
    
    @IBAction func selectMonth(_ sender: Any) {
        if monthList.isHidden {
            monthList.isHidden = false
        } else {
            monthList.isHidden = true
        }
    }
    
    // MARK: - Enter Budget Amounts
    
    func showAddAlert(budgetCategory: String, textField: UITextField) {
        let alert = UIAlertController(title: budgetCategory, message: "Enter budget amount:", preferredStyle: .alert)
        
        var amountTextField: UITextField?
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Amount:"
            alertTextField.keyboardType = .decimalPad
            amountTextField = alertTextField
        }
        
        let addAmountAction = UIAlertAction(title: "Add \(budgetCategory)", style: .default) { (_) in
            guard let amountText = amountTextField?.text,
                  let amount = Double(amountText) else { return }
            
            let finalAmount = String(format: "%.2f", amount)
            textField.text = "$\(finalAmount)"
            
            if budgetCategory == "Rent" {
                self.rent = amount
            } else if budgetCategory == "Power" {
                self.power = amount
            } else if budgetCategory == "Water" {
                self.water = amount
            } else if budgetCategory == "Internet" {
                self.internet = amount
            } else if budgetCategory == "Phone" {
                self.phone = amount
            } else if budgetCategory == "Food" {
                self.food = amount
            } else if budgetCategory == "Transportation" {
                self.transportation = amount
            } else if budgetCategory == "Recreation" {
                self.recreation = amount
            }
            
            self.updateValues()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(addAmountAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addRent(_ sender: Any) {
        showAddAlert(budgetCategory: "Rent", textField: rentTextField)
    }
    
    @IBAction func addPower(_ sender: Any) {
        showAddAlert(budgetCategory: "Power", textField: powerTextField)
    }
    
    @IBAction func addWater(_ sender: Any) {
        showAddAlert(budgetCategory: "Water", textField: waterTextField)
    }
    
    @IBAction func addInternet(_ sender: Any) {
        showAddAlert(budgetCategory: "Internet", textField: internetTextField)
    }
    
    @IBAction func addPhone(_ sender: Any) {
        showAddAlert(budgetCategory: "Phone", textField: phoneTextField)
    }
    
    @IBAction func addFood(_ sender: Any) {
        showAddAlert(budgetCategory: "Food", textField: foodTextField)
    }
    
    @IBAction func addTransportation(_ sender: Any) {
        showAddAlert(budgetCategory: "Transportation", textField: transportationTextField)
    }
    
    @IBAction func addRecreation(_ sender: Any) {
        showAddAlert(budgetCategory: "Recreation", textField: recreationTextField)
    }
    
    // MARK: - Add Payment Reminders
    
    func addReminder(budgetCategory: String, amount: Double) {
        eventStore.requestAccess(to: EKEntityType.reminder, completion: {
            granted, error in
            if (granted) && (error == nil) {
                print("granted \(granted)")
                
                let currencyAmount = String(format: "%.2f", amount)
                let reminder:EKReminder = EKReminder(eventStore: self.eventStore)
                reminder.title = "Pay the $\(currencyAmount) \(budgetCategory) bill"
                
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
        
        navBar.topItem?.title = "My \(selectedItem) Budget"
        
        monthList.isHidden = true
        
        updateValues()
    }

}
