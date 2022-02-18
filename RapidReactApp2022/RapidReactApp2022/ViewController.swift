//
//  ViewController.swift
//  RapidReactApp2022
//
//  Created by Aarav Wattal on 1/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var exampleLabel: UILabel!
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        global.exampleVar = Int(sender.value)
        exampleLabel.text = global.exampleVar.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

