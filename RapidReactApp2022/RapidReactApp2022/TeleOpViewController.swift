//
//  TeleOpViewController.swift
//  RapidReactApp2022
//
//  Created by Kelly Wu on 2/2/22.
//

import UIKit

class TeleOpViewController: UIViewController {
    
    @IBOutlet weak var updateScore: UILabel!
    @IBOutlet weak var lowerHubStepper: UIStepper!
    @IBOutlet weak var upperHubStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateScore.text = ""
    }
    var totalScore = 0
    
    @IBAction func clickedUpperHubStepper(_ sender: UIStepper) {
        totalScore += Int(sender.value)
        updateScore.text =
            String(totalScore)
    }
    @IBAction func clickedLowerHubStepper(_ sender: UIStepper) {
        totalScore += Int(sender.value)
        updateScore.text = String(totalScore)
    }
    

}
