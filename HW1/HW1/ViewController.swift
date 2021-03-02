//
//  ViewController.swift
//  HW1
//
//  Created by Nikita Shamaev on 23.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var InsertNumbersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showUserScreen(_ sender: UIButton) {
        
        guard
            let stringInsertedNumbers = textField.text,
            stringInsertedNumbers.count > 0
        else {
            InsertNumbersLabel.text = "Введите числа"
            InsertNumbersLabel.textColor = .red
            return
        }
        
        guard
            stringInsertedNumbers.split(separator: " ").count > 1
        else {
            InsertNumbersLabel.text = "Введите больше одного значения"
            InsertNumbersLabel.textColor = .red
            return
        }
        InsertNumbersLabel.textColor = .black
        
        UserManager.shared.user = User(numbers: stringInsertedNumbers)
        
        performSegue(withIdentifier: "NumberController", sender: sender)
    }
    
}

