//
//  NumberController.swift
//  HW1
//
//  Created by Nikita Shamaev on 02.03.2021.
//

import UIKit

class NumberController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let strInsertedNUmbers = UserManager.shared.user?.inserted_numbers ?? ""
        
        let numbersWithPluses = strInsertedNUmbers.replacingOccurrences(of: " ", with: " + ")
        
        let numbersSum = strInsertedNUmbers .split(separator: " ").map {Float($0)!}.reduce(0, +)
        
//        код ниже используется для того, чтобы избежать 1 + 2.0 = 3.0
        let intNumberSum = Int(numbersSum)
        var res: Any
        if ((intNumberSum == Int(numbersSum.rounded(.down))) && (intNumberSum == Int(numbersSum.rounded(.up)))){
            res = intNumberSum
        }
        else{
            res = numbersSum
        }
        
        label.text = "\(numbersWithPluses) = \(res)"
    }
    
}
