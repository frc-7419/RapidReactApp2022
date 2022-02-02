//
//  TeleOpViewController.swift
//  RapidReactApp2022
//
//  Created by Kelly Wu on 2/1/22.
//

import Foundation
import UIKit

class TeleOpViewController: UIViewController {

    @IBOutlet weak var lowerLabel: UILabel!
    @IBOutlet weak var upperLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func lowerStepper(_ sender: UIStepper) {
        lowerLabel.text = String(Int(sender.value));
    }
    @IBAction func upperStepper(_ sender: UIStepper) {
        upperLabel.text = String(Int(sender.value));
    }
    
    
}

