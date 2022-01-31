//
//  EndgameViewController.swift
//  RapidReactApp2022
//
//  Created by Franklin on 1/31/22.
//

import Foundation
import UIKit


class EndgameViewController: UIViewController {
    
    //stepper label
    @IBOutlet weak var BallsLabel: UILabel!
    
    
    //stepper
    @IBAction func Stepper(_ sender: UIStepper) {
        BallsLabel.text = String(sender.value)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
