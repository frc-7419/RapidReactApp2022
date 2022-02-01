//
//  EndgameViewController.swift
//  RapidReactApp2022
//
//  Created by Franklin on 1/31/22.
//
//  "telebop"


import Foundation
import UIKit


class EndgameViewController: UIViewController {
    
    //variables declared here:
    private var hanger: String = "none"
    private var scoringBonus: Bool = false
    private var hangerBonus: Bool = false
    
    
    //stepper label
    @IBOutlet weak var BallsLabel: UILabel!
    
    
    //stepper
    @IBAction func Stepper(_ sender: UIStepper) {
        BallsLabel.text = String(sender.value)
    }
    
    //segmented control
    @IBAction func SegmentedControl(_ sender: UISegmentedControl) {
        //detects the selected hanger level and makes changes to var hanger accordingly
        if sender.selectedSegmentIndex == 0 {
            hanger = "Low"
        } else if sender.selectedSegmentIndex == 1 {
            hanger = "Mid"
        } else if sender.selectedSegmentIndex == 2 {
            hanger = "High"
        } else if sender.selectedSegmentIndex == 3 {
            hanger = "Traversal"
        }
    }
    
    //Scoring Bonus Switch
    @IBAction func ScoringBonusSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            scoringBonus = true
        } else {
            scoringBonus = false
        }
    }
    
    //hangerBonus
    
    @IBAction func HangerBonus(_ sender: UISwitch) {
        if (sender.isOn == true) {
            hangerBonus = true
        } else {
            hangerBonus = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}
