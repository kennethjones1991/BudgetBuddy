//
//  ActualViewController.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import UIKit

class ActualViewController: UIViewController {
    
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBOutlet weak var rentTextField: UITextField!
    @IBOutlet weak var powerTextField: UITextField!
    @IBOutlet weak var waterTextField: UITextField!
    @IBOutlet weak var internetTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var transportationTextField: UITextField!
    @IBOutlet weak var recreationTextField: UITextField!
    
    @IBOutlet weak var rentLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var waterLabel: UILabel!
    @IBOutlet weak var internetLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var transportationLabel: UILabel!
    @IBOutlet weak var recreationLabel: UILabel!
    
    @IBOutlet weak var monthButton: UIBarButtonItem!
    var titleMonth = "January"
    
    var rent: Double = 0
    var power: Double = 0
    var water: Double = 0
    var internet: Double = 0
    var phone: Double = 0
    var food: Double = 0
    var transportation: Double = 0
    var recreation: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.topItem?.title = "My \(titleMonth) Expenses"
    }
    
    @IBAction func selectMonth(_ sender: Any) {
    }
    
    // MARK: - Add Expense Amounts
    
    func showAddAlert(expenseCategory: String, textField: UITextField, label: UILabel) {
        let alert = UIAlertController(title: expenseCategory, message: "Enter amount:", preferredStyle: .alert)
        
        var amountTextField: UITextField?
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Amount:"
            alertTextField.keyboardType = .decimalPad
            amountTextField = alertTextField
        }
        
        let addAmountAction = UIAlertAction(title: "Add \(expenseCategory)", style: .default) { (_) in
            guard let amountText = amountTextField?.text,
                  let amount = Double(amountText) else { return }
            
            let finalAmount = String(format: "%.2f", amount)
            textField.text = "$\(finalAmount)"
            
            if expenseCategory == "Rent" {
                let budgetAmount = self.rent
                let difference = budgetAmount - amount
                
                self.setLabel(difference: difference, label: self.rentLabel)
            } else if expenseCategory == "Power" {
                let budgetAmount = self.power
                let difference = budgetAmount - amount
                
                self.setLabel(difference: difference, label: self.powerLabel)
            } else if expenseCategory == "Water" {
                let budgetAmount = self.water
                let difference = budgetAmount - amount
                
                self.setLabel(difference: difference, label: self.waterLabel)
            } else if expenseCategory == "Internet" {
                let budgetAmount = self.internet
                let difference = budgetAmount - amount
                
                self.setLabel(difference: difference, label: self.internetLabel)
            } else if expenseCategory == "Phone" {
                let budgetAmount = self.phone
                let difference = budgetAmount - amount
                
                self.setLabel(difference: difference, label: self.phoneLabel)
            } else if expenseCategory == "Food" {
                let budgetAmount = self.food
                let difference = budgetAmount - amount
                
                self.setLabel(difference: difference, label: self.foodLabel)
            } else if expenseCategory == "Transportation" {
                let budgetAmount = self.transportation
                let difference = budgetAmount - amount
                
                self.setLabel(difference: difference, label: self.transportationLabel)
            } else if expenseCategory == "Recreation" {
                let budgetAmount = self.recreation
                let difference = budgetAmount - amount
                
                self.setLabel(difference: difference, label: self.recreationLabel)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(addAmountAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func setLabel(difference: Double, label: UILabel) {
        if difference == 0 {
            label.textColor = .label
            label.text = String(format: "$%.2f", difference)
        } else if difference > 0 {
            label.textColor = .systemGreen
            label.text = String(format: "+$%.2f", difference)
        } else if difference < 0 {
            label.textColor = .red
            label.text = String(format: "-$%.2f", abs(difference))
        }
    }
    
    @IBAction func addRent(_ sender: Any) {
        showAddAlert(expenseCategory: "Rent", textField: rentTextField, label: rentLabel)
    }
    
    @IBAction func addPower(_ sender: Any) {
        showAddAlert(expenseCategory: "Power", textField: powerTextField, label: powerLabel)
    }
    
    @IBAction func addWater(_ sender: Any) {
        showAddAlert(expenseCategory: "Water", textField: waterTextField, label: waterLabel)
    }
    
    @IBAction func addInternet(_ sender: Any) {
        showAddAlert(expenseCategory: "Internet", textField: internetTextField, label: internetLabel)
    }
    
    @IBAction func addPhone(_ sender: Any) {
        showAddAlert(expenseCategory: "Phone", textField: phoneTextField, label: phoneLabel)
    }
    
    @IBAction func addFood(_ sender: Any) {
        showAddAlert(expenseCategory: "Food", textField: foodTextField, label: foodLabel)
    }
    
    @IBAction func addTransportation(_ sender: Any) {
        showAddAlert(expenseCategory: "Transportation", textField: transportationTextField, label: transportationLabel)
    }
    
    @IBAction func addRecreation(_ sender: Any) {
        showAddAlert(expenseCategory: "Recreation", textField: recreationTextField, label: recreationLabel)
    }
}
