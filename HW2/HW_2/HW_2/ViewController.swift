//
//  ViewController.swift
//  HW_2
//
//  Created by Nikita Shamaev on 02.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayResultLabel: UILabel!

    
    @IBAction func numberPressed(_ sender: UIButton) {
        let number = sender.currentTitle!
        print(number)
    }
    
}

