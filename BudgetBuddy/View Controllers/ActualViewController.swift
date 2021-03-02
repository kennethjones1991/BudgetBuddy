//
//  ActualViewController.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import UIKit

class ActualViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
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
    @IBOutlet weak var monthList: UITableView!
    let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    var currentMonth = 0
    var titleMonth = "January"
    
    var textFields: [UITextField] = []
    var labels: [UILabel] = []
    
    let moneyController = MoneyController.shared
    let context = CoreDataStack.shared.mainContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFields = [rentTextField, powerTextField, waterTextField, internetTextField, phoneTextField, foodTextField, transportationTextField, recreationTextField]
        labels = [rentLabel, powerLabel, waterLabel, internetLabel, phoneLabel, foodLabel, transportationLabel, recreationLabel]
        
        monthList.layer.cornerRadius = 7
        monthList.layer.borderWidth = 0.5
        monthList.layer.borderColor = UIColor.gray.cgColor
        monthList.isHidden = true
        
        updateValues()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
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
        if let firstTab = tabBarController?.viewControllers?[0] as? BudgetViewController {
            firstTab.titleMonth = titleMonth
            firstTab.currentMonth = currentMonth
        }
        
        if !firstInteraction() {
            for (i, textField) in textFields.enumerated() {
                let amount = moneyController.actuals[currentMonth][i].amount
                let budgetAmount = moneyController.budgets[currentMonth][i].amount
                let difference = budgetAmount - amount
                
                if amount > 0 {
                    textField.text = "$\(String(format: "%.2f", amount))"
                } else {
                    textField.text = ""
                }
                
                self.setLabel(difference: difference, label: labels[i])
            }
        }
        
        navBar.topItem?.title = "My \(titleMonth) Expenses"
    }
    
    @IBAction func selectMonth(_ sender: Any) {
        if monthList.isHidden {
            monthList.isHidden = false
        } else {
            monthList.isHidden = true
        }
    }
    
    // MARK: - Add Expense Amounts
    
    func showAddAlert(budget: String, category: Int, textField: UITextField, label: UILabel) {
        let alert = UIAlertController(title: budget, message: "Enter amount:", preferredStyle: .alert)
        
        var amountTextField: UITextField?
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Amount:"
            alertTextField.keyboardType = .decimalPad
            amountTextField = alertTextField
        }
        
        let addAmountAction = UIAlertAction(title: "Add \(budget)", style: .default) { (_) in
            guard let amountText = amountTextField?.text,
                  let amount = Double(amountText) else { return }
            let budgetAmount = self.moneyController.budgets[self.currentMonth][category].amount
            
            textField.text = "$\(String(format: "%.2f", amount))"
            
            self.moneyController.actuals[self.currentMonth][category].amount = amount
            
            let difference = budgetAmount - amount
            self.setLabel(difference: difference, label: label)
            
            try? self.context.save()
            
            self.updateValues()
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
        showAddAlert(budget: "Rent", category: 0, textField: rentTextField, label: rentLabel)
    }
    
    @IBAction func addPower(_ sender: Any) {
        showAddAlert(budget: "Power", category: 1, textField: powerTextField, label: powerLabel)
    }
    
    @IBAction func addWater(_ sender: Any) {
        showAddAlert(budget: "Water", category: 2, textField: waterTextField, label: waterLabel)
    }
    
    @IBAction func addInternet(_ sender: Any) {
        showAddAlert(budget: "Internet", category: 3, textField: internetTextField, label: internetLabel)
    }
    
    @IBAction func addPhone(_ sender: Any) {
        showAddAlert(budget: "Phone", category: 4, textField: phoneTextField, label: phoneLabel)
    }
    
    @IBAction func addFood(_ sender: Any) {
        showAddAlert(budget: "Food", category: 5, textField: foodTextField, label: foodLabel)
    }
    
    @IBAction func addTransportation(_ sender: Any) {
        showAddAlert(budget: "Transportation", category: 6, textField: transportationTextField, label: transportationLabel)
    }
    
    @IBAction func addRecreation(_ sender: Any) {
        showAddAlert(budget: "Recreation", category: 7, textField: recreationTextField, label: recreationLabel)
    }
    
    // MARK: - Month Selection
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        months.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActualMonthCell", for: indexPath)
        
        cell.textLabel?.text = months[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        titleMonth = months[indexPath.row]
        currentMonth = indexPath.row
        
        monthList.isHidden = true
        
        updateValues()
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
