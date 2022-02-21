import UIKit

class EndgameViewController: UIViewController {
    @IBOutlet weak var upperHubLabel: UILabel!
    @IBOutlet weak var updateScore: UILabel!
    @IBOutlet weak var lowerHubLabel: UILabel!
    @IBOutlet weak var initControl: UISegmentedControl!
    @IBOutlet weak var scoringBonus: UISwitch!
    @IBOutlet weak var hangarBonus: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateScore.text = "0"
        initControl.selectedSegmentIndex = 4
        
    }
    var totalScore = 0
    var lowerhubAdd = 0
    var upperhubAdd = 0
    var hangar = "low"
    var hangarAdd = 4
    var didSelect = true
    var scoringBonusSelected = false
    var hangarBonusSelected = false
    @IBAction func hangarLevel(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            case 0:
              print("low")
              hangar = "low"
              hangarAdd = 4
              totalScore = 4
              updateScore.text = String(lowerhubAdd + upperhubAdd + hangarAdd)
            case 1:
              print("mid")
              hangar = "mid"
              hangarAdd = 6
              totalScore = 6
              updateScore.text = String(lowerhubAdd + upperhubAdd + hangarAdd)
            case 2:
              print("high")
              hangar = "high"
              hangarAdd = 10
              totalScore = 10
              updateScore.text = String(lowerhubAdd + upperhubAdd + hangarAdd)
            case 3:
              print("traversal")
              hangar = "traversal"
              hangarAdd = 15
              totalScore = 15
              updateScore.text = String(lowerhubAdd + upperhubAdd + hangarAdd)
            case 4:
              print("none")
              hangar = "none"
              hangarAdd = 0
              totalScore = 0
              updateScore.text = String(lowerhubAdd + upperhubAdd + hangarAdd)
            default:
              break;
            }
    }
    @IBAction func scoringBonusClicked(_ sender: UISwitch) {
        if sender.isOn == true {
            scoringBonusSelected = true
        }
        else {
            scoringBonusSelected = false
        }
    }
    
    @IBAction func hangarBonusClicked(_ sender: UISwitch) {
        if sender.isOn == true {
            hangarBonusSelected = true
        }
        else {
            hangarBonusSelected = false
        }
    }
    
    
    @IBAction func upperHubStepper(_ sender: UIStepper) {
        upperHubLabel.text = String(Int(sender.value))
        lowerhubAdd = Int(lowerHubLabel.text!)!
        upperhubAdd = Int(upperHubLabel.text!)!*2
        updateScore.text = String(lowerhubAdd + upperhubAdd)
        if didSelect {
            updateScore.text = String(lowerhubAdd + upperhubAdd + hangarAdd)
        }
        else {
            updateScore.text = String(lowerhubAdd + upperhubAdd)
        }
    }
    @IBAction func lowerHubStepper(_ sender: UIStepper) {
        lowerHubLabel.text = String(Int(sender.value))
        lowerhubAdd = Int(lowerHubLabel.text!)!
        upperhubAdd = Int(upperHubLabel.text!)!*2
        updateScore.text = String(lowerhubAdd + upperhubAdd)
        if didSelect {
            updateScore.text = String(lowerhubAdd + upperhubAdd + hangarAdd)
        }
        else {
            updateScore.text = String(lowerhubAdd + upperhubAdd)
        }
    }
    
    var endGameTotal = [""]
    
    @IBAction func endGameSubmit(_ sender: Any) {
        endGameTotal.append(String(hangar))
        endGameTotal.append(String(upperHubLabel.text!))
        endGameTotal.append(String(lowerHubLabel.text!))
        endGameTotal.append(String(scoringBonusSelected))
        endGameTotal.append(String(hangarBonusSelected))
        endGameTotal.append(String(updateScore.text!))
        global.endGameArray = endGameTotal
    }
    
    @IBAction func scoringBonusDone(_ sender: Any) {
        if (sender as AnyObject).isOn == true {
            scoringBonusSelected = true
        }
    }
    
    @IBAction func hangarBonusDone(_ sender: Any) {
        if (sender as AnyObject).isOn == true {
            hangarBonusSelected = true
        }
    }
    
        
    
            
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
